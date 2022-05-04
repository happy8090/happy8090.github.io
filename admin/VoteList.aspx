<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="VoteList.aspx.cs" Inherits="WangQi.ERP.Web.admin.VoteList" Title="无标题页" %>

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
		<li><a href="VoteAdd.aspx">添加投票</a></li><li><a href="VoteList.aspx">投票管理</a></li><li><a href="VoteEdit.aspx">编辑投票</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
   <asp:GridView ID="gvVoteList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="VoteList_PageIndexChanging" DataKeyNames="VoteId" OnRowCancelingEdit="VoteList_RowCancelingEdit" OnRowEditing="VoteList_RowEditing" OnRowUpdating="VoteList_RowUpdating" PageSize="11"  CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="暂无任何投票" >
        <Columns>
            <asp:BoundField DataField="VoteId" HeaderText="ID" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:BoundField DataField="Title" HeaderText="投票标题" ReadOnly="True" SortExpression="Title" />
            <asp:TemplateField HeaderText="类型">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Type").ToString()=="True"?"多选":"单选" %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="Locked" HeaderText="是否锁定" ReadOnly="True" >
                <ControlStyle CssClass="checkBox" />
            </asp:CheckBoxField>
            <asp:TemplateField HeaderText="是否显示">
                <ItemTemplate>
                    <%# Eval("IsDisplay").ToString()=="0"?"是":"否" %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="VoteId" DataNavigateUrlFormatString="VoteEdit.aspx?VoteId={0}"
                HeaderText="编辑投票" Text="编辑投票">
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
        leftMenuThisPage(1,2);//当前位置左侧菜单标识
        mainMenuThisPage(2);//当前选项卡标识
  </script></div>
</asp:Content>


