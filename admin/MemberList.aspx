<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="MemberList.aspx.cs" Inherits="WangQi.ERP.Web.admin.MemberList" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <div class="leftMenuTitle">
		人员管理
	</div>
	<ul class="leftMenu">
	    <li><a href="MemberList.aspx">网站人员</a></li>
	    <li><a href="CompanyList.aspx">机关人员 </a></li>
		<li><a href="MemberAdd.aspx">添加人员</a></li>
		<li><a href="MemberGroup.aspx">所属部门</a></li>
		<li><a href="MemberState.aspx">人员状态 </a></li>
		<li><a href="AdministratorsList.aspx">管理员</a></li>
		<li><a href="RegisterAgreement.aspx">注册协议</a></li>
		<li><a href="SysLog.aspx">登录日志 </a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>

  	<li><a href="MemberList.aspx">人员列表</a></li>
    <li><a href="MemberEdit.aspx">编辑人员</a></li>
	</ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7" id="mainTopTable">
      <tr>
        <td colspan="3" bgcolor="#FFFFFF" class="mainTitle">
            人员检索&nbsp;</td>
      </tr>
      <tr>
          <td bgcolor="#FFFFFF" align="right">
              用户名/姓名/Email/电话:</td>
          <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="MemberName" runat="server" CssClass="inputText"></asp:TextBox>
              <asp:HiddenField ID="IsSearch" runat="server" Value="0" />
          </td>
          <td bgcolor="#ffffff">
              <asp:Button ID="Search" runat="server" CssClass="inputBt" Text="人员检索" OnClick="Search_Click" ValidationGroup="MemberSearch" /></td>
      </tr>
    </table>
   <asp:GridView ID="gvMemberList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="MemberList_PageIndexChanging" DataKeyNames="MemberId" OnRowCancelingEdit="MemberList_RowCancelingEdit" OnRowEditing="MemberList_RowEditing" OnRowUpdating="MemberList_RowUpdating" PageSize="11"  CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="暂无任何人员" >
        <Columns>
            <asp:BoundField DataField="MemberName" HeaderText="用户名" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:BoundField DataField="FullName" HeaderText="姓名" ReadOnly="True" SortExpression="Title" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="AddTime" />
            <asp:BoundField DataField="Tel" HeaderText="电话" ReadOnly="True" />
            <asp:BoundField DataField="RegTime" HeaderText="注册时间" ReadOnly="True" />
            <asp:BoundField DataField="RegIp" HeaderText="注册Ip" ReadOnly="True" />
            <asp:BoundField DataField="GroupName" HeaderText="所属部门" />
            <asp:HyperLinkField DataNavigateUrlFields="MemberId" DataNavigateUrlFormatString="MemberEdit.aspx?MemberId={0}"
                HeaderText="编辑" Text="编辑">
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
    <asp:Button ID="btnCompay" runat="server" Text="机关人员" OnClick="btnCompay_Click"/>
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(3);//当前位置顶部菜单标识
        leftMenuThisPage(1,1);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script> </div>
</asp:Content>


