<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="OrderFormDetail.aspx.cs" Inherits="WangQi.ERP.Web.OrderFormDetail" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="MemberControlMenu" Src="~/Controls/MemberControlMenu.ascx"%>
<asp:Content ID="SideContent" ContentPlaceHolderID="Side" Runat="Server">
    <uc:MemberControlMenu ID="MemberControlMenu1" runat="server" />
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID ="Panel1" runat ="server" Visible ="false">
        <div class="mframe">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="tm"> <span class="tt">你访问的订单不存在 </span></div>
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm f14">
                    <asp:Label ID="noOrder" Text ="你访问的订单不存在" runat ="server"></asp:Label>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        </asp:Panel>
    <asp:Panel ID="Panel2" runat ="server" >
        <div class="siteMapPath" >
            <asp:Literal ID="SiteMapPath" runat="server" Text="" ></asp:Literal>
        </div>
        <div class="mframe">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="tm"> <span class="tt">
                <asp:Literal ID="OrderInfo" meta:resourcekey="OrderInfo" runat="server"></asp:Literal>
                </span></div>
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm f14">
                    <div class="highlight"><asp:Label ID="Message"  meta:resourcekey="Message" runat="server" Text=""></asp:Label></div>
                    <asp:HiddenField ID="OrderId" runat="server" />
                    <table width="100%" cellspacing="0" rules="all" border="0" class="bor">
                        <tr>
                            <td><asp:Literal ID="OrderNumLiteral" meta:resourcekey="OrderNumLiteral" runat="server"></asp:Literal></td>
                            <td><asp:Literal ID="OrderNum" runat="server"></asp:Literal></td>
                            <td><asp:Literal ID="StateLiteral" meta:resourcekey="StateLiteral" runat="server"></asp:Literal></td>
                            <td><asp:Literal ID="State" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td><asp:Literal ID="AddTimeLiteral"  meta:resourcekey="AddTimeLiteral" runat="server"></asp:Literal></td>
                            <td><asp:Literal ID="AddTime" runat="server"></asp:Literal></td>
                            <td><asp:Literal ID="TotalPricesLiteral" meta:resourcekey="TotalPricesLiteral" runat="server"></asp:Literal></td>
                            <td><asp:Literal ID="TotalPrices" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td><asp:Literal ID="DeliveryLiteral" meta:resourcekey="DeliveryLiteral" runat="server"></asp:Literal></td>
                            <td colspan="3" align="left" style=" padding-left:20px;"><asp:Literal ID="DeliveryName" runat="server"></asp:Literal>
                                <br />
                                <asp:Label ID="DeliveryMoneyLabel" runat="server" meta:resourcekey="DeliveryMoneyLabel" Text=""></asp:Label>
                                <asp:Label ID="DeliveryMoney" runat="server" ></asp:Label>
                                <br />
                                <asp:Literal ID="DeliveryContent" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td><asp:Literal ID="PaymentLiteral" meta:resourcekey="PaymentLiteral" runat="server"></asp:Literal></td>
                            <td colspan="3" align="left" style=" padding-left:20px;"><asp:Literal ID="PaymentName" runat="server"></asp:Literal>
                                <br />
                                <asp:Literal ID="PaymentContent" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td><asp:Literal ID="ControlLiteral" meta:resourcekey="ControlLiteral" runat="server"></asp:Literal></td>
                            <td colspan="3"><asp:Button ID="ControlButton1" meta:resourcekey="ControlButton1" runat="server" Text="Button" CssClass="btn" OnClick="ControlButton1_Click" />
                                <asp:Button ID="ControlButton2" meta:resourcekey="ControlButton2" runat="server" Text="Button" CssClass="btn" OnClick="ControlButton2_Click" />
                                <asp:Button ID="ControlButton0" meta:resourcekey="ControlButton0" runat="server" Text="Button" CssClass="btn" OnClick="ControlButton0_Click" />
                                &nbsp; </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        <div class="mframe">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="tm"> <span class="tt">
                <asp:Literal ID="MerchandiseInfo" meta:resourcekey="MerchandiseInfo" runat="server"></asp:Literal>
                </span></div>
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm f14">
                    <asp:GridView ID="GoodsList" meta:resourcekey="GoodsList" runat="server" AutoGenerateColumns="False" CssClass="bor" DataKeyNames="ProductId" Width="100%"  >
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
                                <asp:HyperLink ID="ProductName" runat="server" NavigateUrl='<%# WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("D3-{0}-{2}/{1}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("~/ProductDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>'
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
                                <asp:Label ID="GoodsNum" runat="server" Text='<%# Eval("Num") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderTemplate>
                                <asp:Literal ID="GoodsNumHeader" meta:resourcekey="GoodsNumHeader" runat="server"></asp:Literal>
                            </HeaderTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="小计">
                            <EditItemTemplate> &nbsp; </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Subtotal" runat="server" Text='<%# _moneyUnit+(Convert.ToSingle(Eval("Num").ToString())*Convert.ToSingle(Eval("Price"))).ToString(".00") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderTemplate>
                                <asp:Literal ID="SubtotalHeader" meta:resourcekey="SubtotalHeader" runat="server"></asp:Literal>
                            </HeaderTemplate>
                        </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="pager" />
                    </asp:GridView>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        <div class="mframe">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="tm"> <span class="tt">
                <asp:Literal ID="ConsigneeInfo" meta:resourcekey="ConsigneeInfo" runat="server"></asp:Literal>
                </span></div>
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm f14">
                    <table width="100%" cellspacing="0" rules="all" border="0" class="bor">
                        <tr>
                            <td><asp:Literal ID="ConsigneeNameLiteral" meta:resourcekey="ConsigneeNameLiteral" runat="server"></asp:Literal></td>
                            <td><asp:Literal ID="ConsigneeName" runat="server"></asp:Literal></td>
                            <td><asp:Literal ID="ConsigneeEmailLiteral" runat="server" meta:resourcekey="ConsigneeEmailLiteral"></asp:Literal></td>
                            <td><asp:Literal ID="ConsigneeEmail" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td><asp:Literal ID="ConsigneeTelLiteral" runat="server" meta:resourcekey="ConsigneeTelLiteral"></asp:Literal></td>
                            <td><asp:Literal ID="ConsigneeTel" runat="server"></asp:Literal></td>
                            <td><asp:Literal ID="ConsigneePostLiteral" runat="server" meta:resourcekey="ConsigneePostLiteral"></asp:Literal></td>
                            <td><asp:Literal ID="ConsigneePost" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td><asp:Literal ID="ConsigneeAddressLiteral" runat="server" meta:resourcekey="ConsigneeAddressLiteral"></asp:Literal></td>
                            <td colspan="3"><asp:Literal ID="ConsigneeAddress" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td><asp:Literal ID="ConsigneeRemarkLiteral" runat="server" meta:resourcekey="ConsigneeRemarkLiteral"></asp:Literal></td>
                            <td colspan="3"><asp:Literal ID="ConsigneeRemark" runat="server"></asp:Literal>
                                &nbsp; </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        </asp:Panel>
</asp:Content>
