<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="ProductClass.aspx.cs" Inherits="WangQi.ERP.Web.admin.ProductClass" Title="无标题页" %>
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
    <asp:GridView ID="ProductClassList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="ProductClassList_PageIndexChanging" DataKeyNames="ProductClassId" OnRowCancelingEdit="ProductClassList_RowCancelingEdit" OnRowEditing="ProductClassList_RowEditing" OnRowUpdating="ProductClassList_RowUpdating" PageSize="11"  CellPadding="0" CssClass="gv" Width="100%" OnRowDataBound="ProductClassList_RowDataBound" >
        <Columns>
            <asp:BoundField DataField="ProductClassId" HeaderText="Id" ReadOnly="True" SortExpression="ProductClassId" />
            <asp:BoundField DataField="OrderId" HeaderText="排序号" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="分类名称">
                <EditItemTemplate>
                    <asp:TextBox ID="ClassName" runat="server" Text='<%# Bind("ClassName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("ClassNameText") %>'></asp:Label>
                    <asp:HiddenField ID="ParentIdHiddenField" runat="server" Value='<%# Bind("ParentId") %>' />
                </ItemTemplate>
                <ItemStyle CssClass="gvLeftField" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="分类标识">
                <EditItemTemplate>
                    <asp:TextBox ID="FileName" runat="server" Text='<%# Bind("FileName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileName"
                        Display="Dynamic" ErrorMessage="必须填写"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileName"
                        Display="Dynamic" ErrorMessage="必须为小写字母或下划线组成" ValidationExpression="[a-z_]{0,50}"></asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="ProductClassListCustomValidator" runat="server" ControlToValidate="FileName"
                        Display="Dynamic" ErrorMessage="已存在此标识" OnServerValidate="ProductClassListCustomValidator_ServerValidate"></asp:CustomValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("FileName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作" ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="UpdateBt" runat="server" CausesValidation="True" CommandName="Update"
                        Text="更新" />
                    <asp:Button ID="CancelBt" runat="server" CausesValidation="False" CommandName="Cancel"
                        Text="取消" />    
                </EditItemTemplate>
                <ItemStyle CssClass="gvCommandField" />
                <ItemTemplate>
                    <asp:Button ID="EditBt" runat="server" Text="编辑" CausesValidation="false" CommandName="Edit" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="添加产品">
                <ItemStyle CssClass="gvBtAField" />
                <ItemTemplate>
                    <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("ProductClassId", "ProductAdd.aspx?ProductClassId={0}") %>'
                        Text="添加产品"></asp:HyperLink>--%>
                        <a href='ProductAdd.aspx?menuId=<%=readMenuId %>&ProductClassId=<%# Eval("ProductClassId") %><%# Request.Params["op"] == null ? "" : "&op=Hidden"%>'>添加产品</a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="删除">
                <EditItemTemplate>
                    <asp:CheckBox ID="chkDelete" runat="server" />
                </EditItemTemplate>                <ItemTemplate>
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
       <asp:Button ID="btnCancell" runat="server" Text="取消" OnClick="btnCancell_Click" />&nbsp;
       <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="btnDelete_Click" /><br />
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7" id="mainBottTable">
      <tr>
        <td colspan="7" bgcolor="#FFFFFF" class="mainTitle" style="height: 20px">
            添加分类&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            属于分类:</td>
          <td bgcolor="#ffffff">          
              <asp:DropDownList ID="ClassList" runat="server">
              </asp:DropDownList></td>
        <td bgcolor="#FFFFFF" align="right">&nbsp;分类名称:</td>
          <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="ClassName" runat="server" CssClass="inputText" MaxLength ="25"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ClassName"
                  Display="Dynamic" ErrorMessage="必须填写" ValidationGroup="ClassAdd"></asp:RequiredFieldValidator></td>
          <td bgcolor="#FFFFFF" align="right">分类标识:</td>
          <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="FileName" runat="server" CssClass="inputText" MaxLength ="25"></asp:TextBox><asp:RequiredFieldValidator
              ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileName" Display="Dynamic"
              ErrorMessage="必须填写" ValidationGroup="ClassAdd"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                  ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileName"
                  Display="Dynamic" ErrorMessage="必须为小写字母或下划线组成" ValidationExpression="[a-z_]{0,30}" ValidationGroup="ClassAdd"></asp:RegularExpressionValidator><asp:CustomValidator
                      ID="CustomValidator1" runat="server" ControlToValidate="FileName" Display="Dynamic"
                      ErrorMessage="此标识已经存在" OnServerValidate="CustomValidator1_ServerValidate" ValidationGroup="ClassAdd"></asp:CustomValidator></td>
          <td bgcolor="#ffffff">
              <asp:Button ID="AddClass" runat="server" CssClass="inputBt" Text="添加分类" OnClick="AddClass_Click" ValidationGroup="ClassAdd" /></td>
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
        mainMenuThisPage(5);//当前选项卡标识
  </script>
</asp:Content>

