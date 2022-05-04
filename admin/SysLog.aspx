<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="SysLog.aspx.cs" Inherits="WangQi.ERP.Web.admin.SysLog" Title="无标题页" %>
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
		<li><a href="SysLog.aspx">日志列表</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <asp:GridView ID="LogList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="LogList_PageIndexChanging" DataKeyNames="LogId" PageSize="11"  CellPadding="0" CssClass="gv" Width="100%">
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                   <%#Container .DataItemIndex +1 %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Info" HeaderText="登陆信息" SortExpression="PenName" ReadOnly="True" />
            <asp:BoundField DataField="ManagerName" HeaderText="管理员名" SortExpression="ManagerName" ReadOnly="True" />
            <asp:BoundField DataField="Url" HeaderText="登陆地址" ReadOnly="True" />
            <asp:BoundField DataField="AddTime" HeaderText="登陆时间" ReadOnly="True" />
            <asp:BoundField DataField="AddIp" HeaderText="登陆IP" ReadOnly="True" />
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
  </div><br />

  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(3);//当前位置顶部菜单标识
        leftMenuThisPage(1,8);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>


