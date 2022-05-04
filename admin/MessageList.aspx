<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="MessageList.aspx.cs" Inherits="WangQi.ERP.Web.admin.MessageList" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li>
		    <asp:HyperLink ID="MessageLink" runat="server">频道配置</asp:HyperLink>
		</li>
		<li><a href="MessageList.aspx">留言列表</a></li><li><a href="MessageEdit.aspx">留言回复</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7" id="mainTopTable">
      <tr>
          <td bgcolor="#ffffff" class="mainTitle" colspan="5">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>"留言检索&nbsp;</td>
      </tr>
      <tr>
          <td align="right" bgcolor="#ffffff">
              是否回复</td>
          <td align="left" bgcolor="#ffffff">
              <asp:DropDownList ID="IsAnswerList" runat="server">
                  <asp:ListItem Value="10">全部</asp:ListItem>
                  <asp:ListItem Value="1">已回复</asp:ListItem>
                  <asp:ListItem Value="0">未回复</asp:ListItem>
              </asp:DropDownList></td>
          <td bgcolor="#FFFFFF" align="right">
              留言标题/内容:</td>
          <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="MessageTitle" runat="server" CssClass="inputText" MaxLength ="30"></asp:TextBox>
              <asp:HiddenField ID="IsSearch" runat="server" Value="0" />
          </td>
          <td bgcolor="#ffffff">
              <asp:Button ID="Search" runat="server" CssClass="inputBt" Text="留言检索" OnClick="Search_Click" ValidationGroup="MessageSearch" /></td>
      </tr>
    </table>
   <asp:GridView ID="gvMessageList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="MessageList_PageIndexChanging" DataKeyNames="MessageId" OnRowCancelingEdit="MessageList_RowCancelingEdit" OnRowEditing="MessageList_RowEditing" OnRowUpdating="MessageList_RowUpdating" PageSize="11"  CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="暂无任何留言" >
        <Columns>
            <asp:BoundField DataField="MessageId" HeaderText="ID" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:BoundField DataField="Title" HeaderText="留言标题" ReadOnly="True" SortExpression="Title" />
            <asp:BoundField DataField="AddTime" HeaderText="提交时间" ReadOnly="True" SortExpression="AddTime" />
            <asp:BoundField DataField="AddIp" HeaderText="提交IP" ReadOnly="True" />
            <asp:CheckBoxField DataField="IsAnswer" HeaderText="是否回复">
                <ControlStyle CssClass="checkBox" />
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="IsAuditing" HeaderText="是否审核">
                <ControlStyle CssClass="checkBox" />
            </asp:CheckBoxField>
            <asp:HyperLinkField DataNavigateUrlFields="MessageId" DataNavigateUrlFormatString="MessageEdit.aspx?MessageId={0}"
                HeaderText="回复|审核" Text="回复|审核">
                <ItemStyle CssClass="gvBtAField" />
            </asp:HyperLinkField>
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
        topMenuThisPage(2);//当前位置顶部菜单标识
        contentSubMenuThisPage();//当前位置左侧菜单标识
        mainMenuThisPage(2);//当前选项卡标识
  </script>
  </div>

</asp:Content>


