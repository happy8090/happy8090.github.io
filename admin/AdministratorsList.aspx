<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="AdministratorsList.aspx.cs" Inherits="WangQi.ERP.Web.admin.AdministratorsList" Title="无标题页" %>
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
		<li><a href="AdministratorsAdd.aspx">添加管理员</a></li>
		<li><a href="AdministratorsList.aspx">管理员列表</a></li>
		<li><a href="AdministratorsInfo.aspx">修改管理员</a></li>
	</ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <asp:GridView ID="gvManagerList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="gvManagerList_PageIndexChanging" DataKeyNames="ManagerId" OnRowCancelingEdit="gvManagerList_RowCancelingEdit" OnRowEditing="gvManagerList_RowEditing" OnRowUpdating="gvManagerList_RowUpdating" PageSize="11" OnRowDeleting="gvManagerList_RowDeleting" CellPadding="0" CssClass="gv" Width="100%">
        <Columns>
            <asp:BoundField DataField="ManagerId" FooterText="Id" HeaderText="Id" ReadOnly="True" />
            <asp:BoundField DataField="ManagerName" HeaderText="管理员名" SortExpression="ManagerName" ReadOnly="True" />
            <asp:TemplateField HeaderText="密码" SortExpression="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="ChangPassword" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ChangPassword"
                        Display="Dynamic" ErrorMessage="密码至少六位" ValidationExpression="\w{6,32}"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Password", "******") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="PenName" HeaderText="昵称" SortExpression="PenName" />
            <asp:BoundField DataField="AddTime" HeaderText="添加时间" ReadOnly="True" />
            <asp:BoundField DataField="UpTime" HeaderText="更新时间" ReadOnly="True" />
            <asp:TemplateField HeaderText="操作" ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="UpdateBt" runat="server" CausesValidation="True" CommandName="Update"
                        Text="更新" />
                    <asp:Button ID="CancelBt" runat="server" CausesValidation="False" CommandName="Cancel"
                        Text="取消" />    
                </EditItemTemplate>
                <ItemStyle CssClass="gvCommandField" />
                <ItemTemplate>
                    
                    <a href='AdministratorsInfo.aspx?ManagerId=<%# Eval("ManagerId") %>'>编辑</a>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('确定删除吗？')" CommandName="Delete">删除</asp:LinkButton>
                    <%--<asp:Button ID="DelBt" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" />--%><%--<asp:Button ID="EditBt" runat="server" Text="编辑" CausesValidation="false" CommandName="Edit" />--%>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle CssClass="gvRow" />
        <EditRowStyle CssClass="gvEditRow" />
        <PagerStyle CssClass="gvPage" />
        <HeaderStyle CssClass="gvHeader" />
        <AlternatingRowStyle CssClass="gvAlternatingRow" />
    </asp:GridView>
  </div>
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(3);//当前位置顶部菜单标识
        leftMenuThisPage(1,6);//当前位置左侧菜单标识
        mainMenuThisPage(2);//当前选项卡标识
  </script>
</asp:Content>


