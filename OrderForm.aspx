<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="WangQi.ERP.Web.OrderForm" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title meta:resourcekey="OrderPageTtitle" ></title>
<link meta:resourcekey="OrderCssFile" href="" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="Master/zh-CN/style/Page.css" />
<script language="JavaScript" type="text/javascript" src="../../js/System.js"></script>
<script language="JavaScript" type="text/javascript" src="../../js/WebResource1.js"></script>
<script language="JavaScript" type="text/javascript" src="../../js/WebResource2.js"></script>
</head>
<body>
<form id="form1" runat="server">
    <div class="orderTtitle">
        <asp:Literal ID="OrderTtitle" meta:resourcekey="OrderTtitle"  runat="server"></asp:Literal>
    </div>
    <asp:Panel ID="NoLoginPanel" runat="server" Visible="false" EnableViewState="False">
        <asp:Label ID="PlealseLogin" runat="server" CssClass="plealseLogin" Text="" ></asp:Label>
        <asp:HiddenField ID ="hidden" runat ="server" Value="" />
        <UC:MemberLogin ID="MemberLogin1" runat="server" EnableViewState="false" />
        </asp:Panel>
    <asp:Panel ID="LoginPanel" CssClass="loginPanel" runat="server">
        <div class="orderTableBox">
            <table width="100%" border="1" class="orderTable" cellspacing="0">
                <tr>
                    <td colspan="2" class="orderTdTitle" ><asp:Literal ID="ConsigneeTitle" meta:resourcekey="ConsigneeTitle" runat="server" ></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td class="leftTd"><asp:Label ID="Label1" meta:resourcekey="RequiredLabel" CssClass="requiredLabel" runat="server" Text="Label"></asp:Label>
                        <asp:Literal ID="ConsigneeNameLiteral"  meta:resourcekey="ConsigneeNameLiteral" runat="server"></asp:Literal>
                    </td>
                    <td class="rightTd"><asp:TextBox ID="ConsigneeName" runat="server" MaxLength ="30"></asp:TextBox>
                        <asp:Label ID="ConsigneeNameExplain" meta:resourcekey="ConsigneeNameExplain" CssClass="explain" runat="server" Text=""></asp:Label>
                        <asp:RequiredFieldValidator ID="ConsigneeNameRequired"  meta:resourcekey="ConsigneeNameRequired" runat="server" ErrorMessage="" ControlToValidate="ConsigneeName" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="leftTd"><asp:Label ID="Label2" meta:resourcekey="RequiredLabel" CssClass="requiredLabel" runat="server" Text="Label"></asp:Label>
                        <asp:Literal ID="ConsigneeEmailLiteral"  meta:resourcekey="ConsigneeEmailLiteral" runat="server"></asp:Literal>
                    </td>
                    <td class="rightTd"><asp:TextBox ID="ConsigneeEmail" runat="server" MaxLength ="30"></asp:TextBox>
                        <asp:Label ID="ConsigneeEmailExplain" meta:resourcekey="ConsigneeEmailExplain" CssClass="explain" runat="server" Text=""></asp:Label>
                        <asp:RequiredFieldValidator ID="ConsigneeEmailRequired"  meta:resourcekey="ConsigneeEmailRequired" runat="server" ErrorMessage="" ControlToValidate="ConsigneeEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="ConsigneeEmailRegularExpression"  meta:resourcekey="ConsigneeEmailRegularExpression" runat="server" ControlToValidate="ConsigneeEmail"
                            Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="leftTd"><asp:Label ID="Label3" meta:resourcekey="RequiredLabel" CssClass="requiredLabel" runat="server" Text="Label"></asp:Label>
                        <asp:Literal ID="ConsigneeTelLiteral"  meta:resourcekey="ConsigneeTelLiteral" runat="server"></asp:Literal>
                    </td>
                    <td class="rightTd"><asp:TextBox ID="ConsigneeTel" runat="server" MaxLength ="30"></asp:TextBox>
                        <asp:Label ID="ConsigneeTelExplain" meta:resourcekey="ConsigneeTelExplain" CssClass="explain" runat="server" Text=""></asp:Label>
                        <asp:RequiredFieldValidator ID="ConsigneeTelRequired"  meta:resourcekey="ConsigneeTelRequired" runat="server" ErrorMessage="" ControlToValidate="ConsigneeTel" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="leftTd"><asp:Label ID="Label4" meta:resourcekey="RequiredLabel" CssClass="requiredLabel" runat="server" Text="Label"></asp:Label>
                        <asp:Literal ID="ConsigneeAddressLiteral"  meta:resourcekey="ConsigneeAddressLiteral" runat="server"></asp:Literal>
                    </td>
                    <td class="rightTd"><asp:TextBox ID="ConsigneeAddress" CssClass="consigneeAddress" runat="server" MaxLength="30"></asp:TextBox>
                        <asp:Label ID="ConsigneeAddressExplain" meta:resourcekey="ConsigneeAddressExplain" CssClass="explain" runat="server" Text=""></asp:Label>
                        <asp:RequiredFieldValidator ID="ConsigneeAddressRequired"  meta:resourcekey="ConsigneeAddressRequired" runat="server" ErrorMessage="" ControlToValidate="ConsigneeAddress" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="leftTd"><asp:Label ID="Label5" meta:resourcekey="RequiredLabel" CssClass="requiredLabel" runat="server" Text="Label"></asp:Label>
                        <asp:Literal ID="ConsigneePostLiteral"  meta:resourcekey="ConsigneePostLiteral" runat="server"></asp:Literal>
                    </td>
                    <td class="rightTd"><asp:TextBox ID="ConsigneePost" runat="server" MaxLength ="30"></asp:TextBox>
                        <asp:Label ID="ConsigneePostExplain" meta:resourcekey="ConsigneePostExplain" CssClass="explain" runat="server" Text=""></asp:Label>
                        <asp:Label ID="ConsigneePostExpression" meta:resourcekey="ConsigneePostExpression" CssClass="explain" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:RequiredFieldValidator ID="ConsigneePostRequired"  meta:resourcekey="ConsigneePostRequired" runat="server" ErrorMessage="" ControlToValidate="ConsigneePost" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="ConsigneePostExpressionRequired" meta:resourcekey="ConsigneePostExpression" runat="server" ErrorMessage=""  ControlToValidate="ConsigneePost" Display="Dynamic" ValidationExpression="\d{6}"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td class="leftTd"><asp:Literal ID="ConsigneeRemarkLiteral"  meta:resourcekey="ConsigneeRemarkLiteral" runat="server"></asp:Literal>
                    </td>
                    <td class="rightTd"><asp:TextBox ID="ConsigneeRemark" runat="server" TextMode="MultiLine" MaxLength ="40"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="orderTdTitle" ><asp:Literal ID="DeliveryTitle" meta:resourcekey="DeliveryTitle" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="deliveryRepeater" id="DeliveryRepeaterTd"><asp:Repeater ID="DeliveryRepeater" runat="server">
                            <HeaderTemplate>
                                <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li>
                                    <div> <span class="deliveryRadioButton">
                                        <input type="radio" name="Delivery" onclick="DeliveryClientSubmit(<%# Convert.ToSingle(Eval("DeliveryMoney"))%>,'<%#_moneyUnit%>')" value="<%# Eval("DeliveryId") %>|<%# Convert.ToSingle(Eval("DeliveryMoney")).ToString("0.00") %>" id="radiobutton<%# Eval("DeliveryId") %>" />
                                        <label for="radiobutton<%# Eval("DeliveryId") %>"><%# Eval("DeliveryName") %></label>
                                        </span>
                                        <asp:Label ID="DeliveryMoneyLabel" runat="server" CssClass="deliveryMoneyLabel" meta:resourcekey="DeliveryMoneyLabel" Text=""></asp:Label>
                                        <asp:Label ID="DeliveryMoney" CssClass="deliveryMoney" runat="server" Text='<%# _moneyUnit+Convert.ToSingle(Eval("DeliveryMoney")).ToString("0.00")  %>'></asp:Label>
                                    </div>
                                    <div class="deliveryContent">
                                        <asp:Literal ID="DeliveryContent" Text='<%# Bind("DeliveryContent") %>' runat="server"></asp:Literal>
                                    </div>
                                </li>
                            </ItemTemplate>
                            <FooterTemplate>
                                </ul>
                            </FooterTemplate>
                        </asp:Repeater>
                        <asp:CustomValidator ID="DeliveryRepeaterCustom" meta:resourcekey="DeliveryRepeaterCustom" runat="server" ErrorMessage="CustomValidator" OnServerValidate="DeliveryRepeaterCustom_ServerValidate" Display="Dynamic"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="orderTdTitle" ><asp:Literal ID="PaymentTitle" meta:resourcekey="PaymentTitle" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="paymentRepeater"><asp:Repeater ID="PaymentRepeater" runat="server">
                            <HeaderTemplate>
                                <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li>
                                    <div> <span class="deliveryRadioButton">
                                        <input type="radio" name="Payment" value="<%# Eval("PaymentId") %>" id="Payment<%# Eval("PaymentId") %>" />
                                        <label for="Payment<%# Eval("PaymentId") %>"><%# Eval("PaymentName")%></label>
                                        </span> </div>
                                    <div class="paymentContent">
                                        <asp:Literal ID="PaymentContent" Text='<%# Bind("PaymentContent") %>' runat="server"></asp:Literal>
                                    </div>
                                </li>
                            </ItemTemplate>
                            <FooterTemplate>
                                </ul>
                            </FooterTemplate>
                        </asp:Repeater>
                        <asp:CustomValidator ID="PaymentRepeaterCustom" meta:resourcekey="PaymentRepeaterCustom" runat="server" ErrorMessage="CustomValidator" OnServerValidate="PaymentRepeaterCustom_ServerValidate" Display="Dynamic"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div class="goodsListBox">
            <asp:GridView ID="GoodsList" meta:resourcekey="GoodsList" runat="server" AutoGenerateColumns="False" CssClass="goodsList" DataKeyNames="ProductId" Width="100%"  >
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
                        <asp:HyperLink ID="ProductName" runat="server" CssClass="productName" NavigateUrl='<%# WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("D3-{0}-{2}/{1}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("~/ProductDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>'
                                    Text='<%#Eval("ProductName") %>'
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
                        <asp:Label ID="GoodsNum" runat="server" Text='<%#WangQi.ERP.WebsiteData.CartObj.GetGoodsNum(Eval("ProductId").ToString()).ToString() %>'></asp:Label>
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
                </Columns>
                <RowStyle CssClass="row" />
                <PagerStyle CssClass="pager" />
                <HeaderStyle CssClass="header" />
                <AlternatingRowStyle CssClass="alternatingRow" />
            </asp:GridView>
        </div>
        <div class="priceBox">
            <asp:Label ID="DeliveryMoneyLabel" CssClass="deliveryMoneyLabel" meta:resourcekey="DeliveryMoneyLabel"  runat="server" Text=""></asp:Label>
            <asp:Label ID="DeliveryMoney" CssClass="deliveryMoney" runat="server" Text=""></asp:Label>
            <%--                <asp:Label ID="GrossLabel" CssClass="grossLabel" meta:resourcekey="GrossLabel"  runat="server" Text=""></asp:Label><asp:Label ID="Gross" CssClass="gross" runat="server" Text=""></asp:Label>
--%>
            <asp:Button ID="SubmitButton" meta:resourcekey="SubmitButton" runat="server" Text="" OnClick="SubmitButton_Click" />
            <span id="DeliverySubmitButtonSpan" class="hide">
            <asp:Button ID="DeliverySubmitButton" runat="server" Text="DeliverySubmitButton" OnClick="DeliverySubmitButton_Click" CausesValidation="False"/>
            <asp:HiddenField ID="DeliverySubmitHiddenField" runat="server" />
            <%--                    <asp:HiddenField ID="TotalMoney" runat="server" />
--%>
            </span> </div>
        </asp:Panel>
    <%--<asp:Panel ID="OrderSendPanel" runat="server" CssClass="orderSendPanel" Visible="false">
            <div class="sendMsgBox">
                <asp:Literal ID="SendMsgLiteral" meta:resourcekey="SendMsgLiteral" runat="server"></asp:Literal>
            </div>
            <div class="closeButtonBox">
                <asp:Button ID="CloseButton" meta:resourcekey="CloseButton" runat="server"  OnClientClick="window.opener = null;window.close(); return false;" Text="Button" />
            </div>
        </asp:Panel>--%>
</form>
<script language="JavaScript" type="text/javascript" >      
        DeliveryRadiochecked();
    </script>
</body>
</html>
