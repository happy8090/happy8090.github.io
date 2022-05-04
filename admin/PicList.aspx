<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="PicList.aspx.cs" Inherits="WangQi.ERP.Web.admin.PicList" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li>
		    <asp:HyperLink ID="PicLink" runat="server">添加图文</asp:HyperLink>
		</li>
		<li><a href="PicList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">图文列表</a></li><li><a href="PicEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">图文编辑</a></li><li><a href="PicClass.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">分类管理</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7" id="mainTopTable">
      <tr>
        <td colspan="5" bgcolor="#FFFFFF" class="mainTitle">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 图文检索&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            属于分类:</td>
          <td bgcolor="#ffffff">          
              <asp:DropDownList ID="ClassList" runat="server">
              </asp:DropDownList></td>
          <td bgcolor="#FFFFFF" align="right">
              图文标题/内容:</td>
          <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="PicTitle" runat="server" CssClass="inputText" MaxLength ="25"></asp:TextBox>
              <asp:HiddenField ID="IsSearch" runat="server" Value="0" />
          </td>
          <td bgcolor="#ffffff">
              <asp:Button ID="Search" runat="server" CssClass="inputBt" Text="图文检索" OnClick="Search_Click" ValidationGroup="PicSearch" /></td>
      </tr>
    </table>
   <asp:GridView ID="gvPicList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="PicList_PageIndexChanging" DataKeyNames="PicId" OnRowCancelingEdit="PicList_RowCancelingEdit" OnRowEditing="PicList_RowEditing" OnRowUpdating="PicList_RowUpdating" PageSize="11"  CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="暂无任何图文" >
        <Columns>
            <asp:BoundField DataField="PicId" HeaderText="ID" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:BoundField DataField="ClassName" HeaderText="所属分类" ReadOnly="True" SortExpression="ClassName" />
            <asp:BoundField DataField="Title" HeaderText="图文标题" ReadOnly="True" SortExpression="Title" />
            <asp:HyperLinkField DataNavigateUrlFields="PicPathSmall" HeaderText="小图预览" Target="_blank"
                Text="预览" />
            <asp:HyperLinkField DataNavigateUrlFields="PicPathBig" HeaderText="大图预览" Text="预览" Target="_blank" />
            <asp:BoundField DataField="AddTime" HeaderText="添加时间" ReadOnly="True" SortExpression="AddTime" />
            <asp:TemplateField HeaderText="是否评论">
                <ItemTemplate>
                    <%# GetIsCommand(Eval("IsReply"), Eval("PicId"))%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <ItemStyle CssClass="gvBtAField" />
                <ItemTemplate>
                    <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("PicId", "PicEdit.aspx?PicId={0}") %>'
                        Text="编辑图文"></asp:HyperLink>--%>
                        <a href='PicEdit.aspx?PicId=<%# Eval("PicId") %><%# Request.Params["op"] == null ? "" : "&op=Hidden" %>'>编辑图文</a>
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
    </asp:GridView>
  <br />
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
        //topMenuThisPage(2);//当前位置顶部菜单标识
        contentSubMenuThisPage();//当前位置左侧菜单标识
        mainMenuThisPage(2);//当前选项卡标识
  </script>
  </div>

</asp:Content>


