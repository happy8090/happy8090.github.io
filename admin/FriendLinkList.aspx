<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="FriendLinkList.aspx.cs" Inherits="WangQi.ERP.Web.admin.FriendLinkList" Title="无标题页" %>

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
		<li><a href="FriendLinkAdd.aspx">添加链接</a></li><li><a href="FriendLinkList.aspx">链接列表</a></li><li><a href="FriendLinkEdit.aspx">编辑链接</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
       显示条件:<asp:DropDownList ID="ddlCondition" runat="server" OnSelectedIndexChanged="ddlCondition_SelectedIndexChanged" AutoPostBack="True">
           <asp:ListItem Selected="True" Value="0">全显</asp:ListItem>
           <asp:ListItem Value="1">通过审核的</asp:ListItem>
           <asp:ListItem Value="2">未通过审核的</asp:ListItem>
       </asp:DropDownList>
   <asp:GridView ID="gvFriendLinkList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="FriendLinkList_PageIndexChanging" DataKeyNames="FriendLinkId" OnRowCancelingEdit="FriendLinkList_RowCancelingEdit" OnRowEditing="FriendLinkList_RowEditing" OnRowUpdating="FriendLinkList_RowUpdating" PageSize="11"  CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="暂无任何友情链接" >
        <Columns>
            <asp:BoundField DataField="FriendLinkId" HeaderText="ID" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="链接类型">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Type").ToString()=="True"?"图片链接":"文字链接" %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="url" DataTextField="url" HeaderText="链接地址"
                Target="_blank" />
            <asp:BoundField DataField="Title" HeaderText="链接文字" ReadOnly="True" SortExpression="Title" NullDisplayText="无" />
            <asp:TemplateField HeaderText="Logo图片">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Bind("LogoPath") %>'
                        Target="_blank" Text='<%# Eval("LogoPath").ToString()==""?"无":"预览" %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="FriendLinkId" DataNavigateUrlFormatString="FriendLinkEdit.aspx?FriendLinkId={0}"
                HeaderText="编辑链接" Text="编辑链接">
                <ItemStyle CssClass="gvBtAField" />
            </asp:HyperLinkField>
            <asp:TemplateField HeaderText="审核">
                <EditItemTemplate>
                    <asp:CheckBox ID="chkAuditing" runat="server" Checked='<%# Bind("Auditing") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="chkAuditing" runat="server" Checked='<%# Bind("Auditing") %>' />
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
    <asp:Button ID="btnAuditing" runat="server" Text="审核" OnClick="btnAuditing_Click" />
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(5);//当前位置顶部菜单标识
        leftMenuThisPage(1,3);//当前位置左侧菜单标识
        mainMenuThisPage(2);//当前选项卡标识
  </script>
</div>
</asp:Content>


