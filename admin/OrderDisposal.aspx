<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="OrderDisposal.aspx.cs" Inherits="WangQi.ERP.Web.admin.OrderDisposal" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li>
		    <asp:HyperLink ID="ProductLink" runat="server">频道配置</asp:HyperLink>
		</li>
		<li><a href="ProductAdd.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">添加产品</a></li><li><a href="ProductList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">产品列表</a></li><li><a href="ProductEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">产品编辑</a></li><li><a href="ProductClass.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">分类管理</a></li><li><a href="OrderList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">订单管理</a></li><li><a href="OrderDisposal.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">订单操作</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" id="mainTopTable" border="0"  cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            <asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>订单信息</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            订单ID:</td>
        <td bgcolor="#FFFFFF" >
            <asp:Label ID="OrderId" runat="server" ForeColor="Red"></asp:Label>
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainContentLeftTd" >
            订单编号:
        </td>
        <td bgcolor="#FFFFFF" class="mainContentRightTd">
            <asp:Literal ID="OrderNum" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            订单状态:</td>
        <td bgcolor="#FFFFFF" >
            <asp:Literal ID="State" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            下单时间:</td>
        <td bgcolor="#FFFFFF">
            <asp:Literal ID="AddTime" runat="server"></asp:Literal></td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                提交IP:</td>
            <td bgcolor="#ffffff">
                <asp:Literal ID="AddIP" runat="server"></asp:Literal></td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            支付总额:</td>
        <td bgcolor="#FFFFFF">
            <asp:Literal ID="TotalPrices" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            运送方式:</td>
        <td bgcolor="#FFFFFF">
            <div>
                <span class="deliveryName">
                    <asp:Literal ID="DeliveryName" runat="server"></asp:Literal>
                </span>
                <asp:Label ID="DeliveryMoneyLabel" runat="server" CssClass="deliveryMoneyLabel" Text="运送价格:"></asp:Label><asp:Label ID="DeliveryMoney" CssClass="deliveryMoney" runat="server" ></asp:Label>
            </div>
            <div class="deliveryContent">
                <asp:Literal ID="DeliveryContent" runat="server"></asp:Literal>
            </div>
        </td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                支付方式:</td>
            <td bgcolor="#ffffff">
                <div>
                    <span class="paymentName">
                        <asp:Literal ID="PaymentName" runat="server"></asp:Literal>
                    </span>
                </div>
                <div class="paymentContent">
                    <asp:Literal ID="PaymentContent" runat="server"></asp:Literal>
                </div>
            </td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF">
            订单操作:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Button ID="Button1" runat="server" Text="确认到款" CssClass="inputBt" OnClick="Button1_Click"  />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="已发货" CssClass="inputBt" OnClick="Button2_Click"  />&nbsp;
            <asp:Button ID="Button3" runat="server" Text="归档订单" CssClass="inputBt" OnClick="Button3_Click"  />&nbsp;
            <asp:Button ID="Button0" runat="server" Text="取消订单" CssClass="inputBt" OnClick="Button0_Click"  /></td>
      </tr>
    </table>
    <asp:GridView ID="GoodsList" runat="server" AutoGenerateColumns="False" PageSize="11"  CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="暂无任何商品" >
        <Columns>
            <asp:TemplateField HeaderText="商品货号" SortExpression="OrderNum">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("OrderNum") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:Label ID="ProductNumber" runat="server" Text='<%# Bind("ProductNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="商品名称" SortExpression="AddTime">
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("AddTime") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="ProductName" runat="server" CssClass="productName" NavigateUrl='<%# String.Format("~/ProductDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("ProductId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.SiteInfo.SiteLanguage()) %>'
                        Target="_blank" Text='<%# Eval("ProductName") %>' ToolTip='<%# Eval("ProductName") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="商品价格">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:Label ID="Price" runat="server" Text='<%# Convert.ToSingle(Eval("Price")).ToString(".00") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="订购数量">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:Label ID="GoodsNum" runat="server" Text='<%# Eval("Num") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="小计">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("AddIP") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Subtotal" runat="server" Text='<%# (Convert.ToSingle(Eval("Num").ToString())*Convert.ToSingle(Eval("Price"))).ToString(".00") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle CssClass="gvRow" />
        <EditRowStyle CssClass="gvEditRow" />
        <PagerStyle CssClass="gvPage" />
        <HeaderStyle CssClass="gvHeader" />
        <AlternatingRowStyle CssClass="gvAlternatingRow" />
    </asp:GridView><table width="100%" id="mainBottTable" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
        <tr>
            <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
                收货人信息</td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF" class="mainContentLeftTd" >
                收货人姓名:
            </td>
            <td bgcolor="#FFFFFF" class="mainContentRightTd">
                <asp:Literal ID="ConsigneeName" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF" >
                电子信箱:</td>
            <td bgcolor="#FFFFFF" >
                <asp:Literal ID="ConsigneeEmail" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF" >
                电话:</td>
            <td bgcolor="#FFFFFF">
                <asp:Literal ID="ConsigneeTel" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                邮政编码:</td>
            <td bgcolor="#ffffff">
                <asp:Literal ID="ConsigneePost" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF" >
                联系地址:</td>
            <td bgcolor="#FFFFFF">
                <asp:Literal ID="ConsigneeAddress" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF" >
                备注:</td>
            <td bgcolor="#FFFFFF">
                <asp:Literal ID="ConsigneeRemark" runat="server"></asp:Literal></td>
        </tr>
    </table>
  </div>
    <script language="JavaScript" type="text/javascript" >
        var op=location.search;
       if(op.toLowerCase().indexOf("hidden")>-1)
       {
        topMenuThisPage(2);//当前位置顶部菜单标识
       }
       else
       {
        topMenuThisPage(1);//当前位置顶部菜单标识
       }
        //topMenuThisPage(2);//当前位置顶部菜单标识
        contentSubMenuThisPage();//当前位置左侧菜单标识
        mainMenuThisPage(7);//当前选项卡标识
  </script>
</asp:Content>


