<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="OrderList.aspx.cs" Inherits="WangQi.ERP.Web.admin.OrderList" Title="无标题页" %>
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
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7" id="mainTopTable">
      <tr>
        <td colspan="5" bgcolor="#FFFFFF" class="mainTitle">
            <asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>订单检索&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            订单状态:</td>
          <td bgcolor="#ffffff">     
              <asp:DropDownList ID="BargainorStateList" runat="server">
                  <asp:ListItem Value="0,1,2,3">所有</asp:ListItem>
                  <asp:ListItem Value="0">未确认</asp:ListItem>
                  <asp:ListItem Value="1">已确认到款</asp:ListItem>
                  <asp:ListItem Value="2">已发货</asp:ListItem>
                  <asp:ListItem Value="3">已归档</asp:ListItem>
              </asp:DropDownList>
              <asp:DropDownList ID="PurchaserStateList" runat="server">
                  <asp:ListItem Value="0,1,2">所有</asp:ListItem>
                  <asp:ListItem Value="0">未付款</asp:ListItem>
                  <asp:ListItem Value="1">已付款</asp:ListItem>
                  <asp:ListItem Value="2">已到货</asp:ListItem>
              </asp:DropDownList>
            </td>
          <td bgcolor="#FFFFFF" align="right">
              订单编号:</td>
          <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="OrderNum" runat="server" CssClass="inputText" MaxLength ="30"></asp:TextBox>
              <asp:HiddenField ID="IsSearch" runat="server" Value="0" />
          </td>
          <td bgcolor="#ffffff">
              <asp:Button ID="Search" runat="server" CssClass="inputBt" Text="订单检索" OnClick="Search_Click" ValidationGroup="ProductSearch" /></td>
      </tr>
    </table>
   <asp:GridView ID="gvOrderList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="ProductList_PageIndexChanging" DataKeyNames="OrderId" OnRowCancelingEdit="ProductList_RowCancelingEdit" OnRowEditing="ProductList_RowEditing" OnRowUpdating="ProductList_RowUpdating" PageSize="11" OnRowDeleting="ProductList_RowDeleting" CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="暂无任何订单" >
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="ID" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:BoundField DataField="OrderNum" HeaderText="订单编号" ReadOnly="True" SortExpression="OrderNum" />
            <asp:BoundField DataField="AddTime" HeaderText="生成时间" ReadOnly="True" SortExpression="AddTime" />
            <asp:TemplateField HeaderText="订单状态">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="State" runat="server" Text='<%# GetGlobalResourceObject("WebResourcesGlobal", "BargainorState"+Eval("BargainorState")).ToString()+"["+GetGlobalResourceObject("WebResourcesGlobal", "PurchaserState"+Eval("PurchaserState")).ToString()+"]" %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="订单总额">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="TotalPrices" runat="server" Text='<%# Convert.ToSingle(Eval("TotalPrices")).ToString(".00") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="AddIP" HeaderText="提交IP" />
            <asp:TemplateField HeaderText="处理订单">
                <ItemStyle CssClass="gvBtAField" />
                <ItemTemplate>
                    <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("OrderId", "OrderDisposal.aspx?OrderId={0}") %>'
                        Text="处理订单"></asp:HyperLink>--%>
                        <a href='OrderDisposal.aspx?OrderId=<%# Eval("OrderId") %><%# Request.Params["op"] == null ? "" : "&op=Hidden" %>'>处理订单</a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle CssClass="gvRow" />
        <EditRowStyle CssClass="gvEditRow" />
        <PagerStyle CssClass="gvPage" />
        <HeaderStyle CssClass="gvHeader" />
        <AlternatingRowStyle CssClass="gvAlternatingRow" />
    </asp:GridView>

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
        mainMenuThisPage(6);//当前选项卡标识
  </script>
</asp:Content>


