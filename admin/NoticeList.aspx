<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="NoticeList.aspx.cs" Inherits="WangQi.ERP.Web.admin.NoticeList" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <div class="leftMenuTitle">
		系统管理
	</div>
	<ul class="leftMenu">
	    <li><a href="NoticeList.aspx">公告管理</a></li>
		<li><a href="VoteAdd.aspx">投票管理</a></li>
		<li><a href="FriendLinkAdd.aspx">友情链接</a></li>
		<li><a href="OrderSet.aspx">订购配置</a></li>
		<li><a href="SysTemplet.aspx">系统模板</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li><a href="NoticeAdd.aspx">添加公告</a></li><li><a href="NoticeList.aspx">公告列表</a></li><li><a href="NoticeEdit.aspx">编辑公告</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7" id="mainTopTable">
      <tr>
        <td colspan="3" bgcolor="#FFFFFF" class="mainTitle">
            公告检索&nbsp;</td>
      </tr>
      <tr>
          <td bgcolor="#FFFFFF" align="right">
              公告标题/内容:</td>
          <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="NoticeTitle" runat="server" CssClass="inputText"></asp:TextBox>
              <asp:HiddenField ID="IsSearch" runat="server" Value="0" />
          </td>
          <td bgcolor="#ffffff">
              <asp:Button ID="Search" runat="server" CssClass="inputBt" Text="公告检索" OnClick="Search_Click" ValidationGroup="NoticeSearch" /></td>
      </tr>
    </table>
   <asp:GridView ID="gvNoticeList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="NoticeList_PageIndexChanging" DataKeyNames="NoticeId" OnRowCancelingEdit="NoticeList_RowCancelingEdit" OnRowEditing="NoticeList_RowEditing" OnRowUpdating="NoticeList_RowUpdating" PageSize="11" CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="暂无任何公告" >
        <Columns>
            <asp:BoundField DataField="NoticeId" HeaderText="ID" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:BoundField DataField="Title" HeaderText="公告标题" ReadOnly="True" SortExpression="Title" />
            <asp:BoundField DataField="AddTime" HeaderText="添加时间" ReadOnly="True" SortExpression="AddTime" />
            <asp:HyperLinkField DataNavigateUrlFields="NoticeId" DataNavigateUrlFormatString="NoticeEdit.aspx?NoticeId={0}"
                HeaderText="编辑公告" Text="编辑公告">
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
    </asp:GridView>
<br />

  
    <asp:Button ID="btnAll" runat="server" Text="全选" OnClick="btnAll_Click" />
    <asp:Button ID="btnReverse" runat="server" Text="反选" OnClick="btnReverse_Click" />
    <asp:Button ID="btnCancell" runat="server" Text="取消" OnClick="btnCancell_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="btnDelete_Click" />
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(5);//当前位置顶部菜单标识
        leftMenuThisPage(1,1);//当前位置左侧菜单标识
        mainMenuThisPage(2);//当前选项卡标识
  </script></div>
</asp:Content>


