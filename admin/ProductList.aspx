<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="WangQi.ERP.Web.admin.ProductList" Title="无标题页" %>
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
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 产品检索&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px" >
            属于分类:</td>
          <td bgcolor="#ffffff" style="height: 20px">          
              <asp:DropDownList ID="ClassList" runat="server">
              </asp:DropDownList></td>
          <td bgcolor="#FFFFFF" align="right" style="height: 20px">
              产品名称/型号/摘要/简介:</td>
          <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:TextBox ID="ProductName" runat="server" CssClass="inputText" MaxLength ="30"></asp:TextBox>
              <asp:HiddenField ID="IsSearch" runat="server" Value="0" />
          </td>
          <td bgcolor="#ffffff" style="height: 20px">
              <asp:Button ID="Search" runat="server" CssClass="inputBt" Text="产品检索" OnClick="Search_Click" ValidationGroup="ProductSearch" /></td>
      </tr>
    </table>
   <asp:GridView ID="gvProductList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="ProductList_PageIndexChanging" DataKeyNames="ProductId" OnRowCancelingEdit="ProductList_RowCancelingEdit" OnRowEditing="ProductList_RowEditing" OnRowUpdating="ProductList_RowUpdating" PageSize="11"  CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="<span class='msg'>暂无任何产品</span>" >
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText="ID" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:BoundField DataField="ClassName" HeaderText="所属分类" ReadOnly="True" SortExpression="ClassName" />
            <asp:BoundField DataField="ProductName" HeaderText="产品名称" ReadOnly="True" SortExpression="Title" />
            <asp:HyperLinkField DataNavigateUrlFields="PicPathSmall" HeaderText="小图预览" Target="_blank"
                Text="预览" />
            <asp:HyperLinkField DataNavigateUrlFields="PicPathBig" HeaderText="大图预览" Text="预览" Target="_blank" />
            <asp:BoundField DataField="AddTime" HeaderText="添加时间" ReadOnly="True" SortExpression="AddTime" />
            <asp:TemplateField HeaderText="是否评论">
                <ItemTemplate>
                   <%# GetIsCommand(Eval("IsReply"), Eval("ProductId"))%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="编辑产品">
                <ItemStyle CssClass="gvBtAField" />
                <ItemTemplate>
                    <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("ProductId", "ProductEdit.aspx?ProductId={0}") %>'
                        Text="编辑产品"></asp:HyperLink>--%>
                        <a href='ProductEdit.aspx?ProductId=<%# Eval("ProductId") %><%# Request.Params["op"] == null ? "" : "&op=Hidden" %>'>编辑产品</a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="删除">
                <EditItemTemplate>
                    <asp:CheckBox ID="chkDelete" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="chkDelete" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle CssClass="gvRow" />
        <EditRowStyle CssClass="gvEditRow" />
        <PagerStyle CssClass="gvPage" />
        <HeaderStyle CssClass="gvHeader" />
        <AlternatingRowStyle CssClass="gvAlternatingRow" />
    </asp:GridView><br />

    <asp:Button ID="btnAll" runat="server" Text="全选" OnClick="btnAll_Click" />
    <asp:Button ID="btnReverse" runat="server" Text="反选" OnClick="btnReverse_Click" />
    <asp:Button ID="btnCancell" runat="server" Text="取消" OnClick="btnCancell_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="btnDelete_Click" />
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
       // topMenuThisPage(2);//当前位置顶部菜单标识
        contentSubMenuThisPage();//当前位置左侧菜单标识
        mainMenuThisPage(3);//当前选项卡标识
  </script>
  </div>

</asp:Content>

