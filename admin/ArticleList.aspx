<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="ArticleList.aspx.cs" Inherits="WangQi.ERP.Web.admin.ArticleList" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li>
		    <asp:HyperLink ID="ArticleLink" runat="server">添加文章</asp:HyperLink>
		</li>
		<li><a href="ArticleList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">管理文章</a></li><li><a href="ArticleEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">编辑文章</a></li><li><a href="ArticleClass.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">分类管理</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7" id="mainTopTable">
      <tr>
        <td colspan="5" bgcolor="#FFFFFF" class="mainTitle">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 文章检索&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px" >
            属于分类:</td>
          <td bgcolor="#ffffff" style="height: 20px">          
              <asp:DropDownList ID="ClassList" runat="server">
              </asp:DropDownList></td>
          <td bgcolor="#FFFFFF" align="right" style="height: 20px">
              文章标题/内容:</td>
          <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:TextBox ID="ArticleTitle" runat="server" CssClass="inputText" MaxLength ="25"></asp:TextBox>
              <asp:HiddenField ID="IsSearch" runat="server" Value="0" />
          </td>
          <td bgcolor="#ffffff" style="height: 20px">
              <asp:Button ID="Search" runat="server" CssClass="inputBt" Text="文章检索" OnClick="Search_Click" ValidationGroup="ArticleSearch" /></td>
      </tr>
    </table>
   <asp:GridView ID="gvArticleList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="ArticleList_PageIndexChanging" DataKeyNames="ArticleId" OnRowCancelingEdit="ArticleList_RowCancelingEdit" OnRowEditing="ArticleList_RowEditing" OnRowUpdating="ArticleList_RowUpdating" PageSize="11"  CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="暂无任何文章" >
        <Columns>
            <asp:BoundField DataField="ArticleId" HeaderText="ID" ReadOnly="True">
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="所属分类">
                <ItemTemplate>
                <%#GetClassName(Eval("ArticleClassId"))%>
                </ItemTemplate>
                <ItemStyle Width="80px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="文章标题" SortExpression="Title">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="文章作者" SortExpression="Author">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="AddTime" HeaderText="添加时间" ReadOnly="True" SortExpression="AddTime" />
            <asp:TemplateField HeaderText="是否置顶">
                <ItemTemplate>
                    <%# Eval("IsTop").ToString() == "1" ? "<font color='#FF0000'><strong>是</strong></font>" : "否" %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="是否醒目">
                <ItemTemplate>
                   <%# Eval("IsNew").ToString()=="1" ? "<font color='#FF0000'><strong>是</strong></font>" : "否"%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="是否评论">
                <ItemTemplate>
                   <%# GetIsCommand(Eval("IsReply"), Eval("ArticleId"))%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="编辑文章">
                <ItemStyle CssClass="gvBtAField" />
                <ItemTemplate>
                        <a href='ArticleEdit.aspx?ArticleId=<%# Eval("ArticleId")%><%# Request.Params["op"] == null ? "" : "&op=Hidden" %>'>编辑文章</a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="删除">
                <EditItemTemplate>
                    <asp:CheckBox ID="chkDelete" runat="server" Enabled ="false" />
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
  </script></div>
</asp:Content>


