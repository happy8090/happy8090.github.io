<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="MemberState.aspx.cs" Inherits="WangQi.ERP.Web.admin.MemberState" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" runat="server">
<div id="mainMenu">
  	<ul>	
  	<li><a href="MemberGroup.aspx">人员状态</a></li>
	</ul>
  </div>
  <div id="main">
      <asp:Label ID="Msg" runat="server" CssClass="msg" Text="" Visible="False"></asp:Label>
      <table id="Table1" bgcolor="#d7d7d7" border="0" cellpadding="2" cellspacing="1" width="100%">
          <tr>
              <td bgcolor="#ffffff" class="mainTitle" colspan="3" style="height: 20px; width: 720px;">
                  人员状态操作</td>
          </tr>
          <tr>
              <td bgcolor="#ffffff" colspan="3" style="height: 27px; width: 720px;">
        <asp:GridView ID="gvGroup" runat="server" AutoGenerateColumns="False" DataKeyNames ="Id" OnRowCancelingEdit="gvGroup_RowCancelingEdit" OnRowEditing="gvGroup_RowEditing" OnRowUpdating="gvGroup_RowUpdating" EmptyDataText="暂无任何所属部门" Width="100%" OnRowDataBound="gvGroup_RowDataBound" >
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="人员状态">
                    <EditItemTemplate>
                        <asp:TextBox ID="gvtbName" runat="server" Text='<%# Bind("StateName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*必填" ControlToValidate ="gvtbName" ValidationGroup ="2"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="gvtbName" runat="server" Text='<%# Bind("StateName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="是否有详情">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckB" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# GetIsChecked(Eval("IsChecked")) %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="UpdateBt" runat="server" CausesValidation="True" CommandName="Update"
                            Text="更新" ValidationGroup ="2"></asp:LinkButton>
                        <asp:LinkButton ID="CacellBt" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="取消"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="EditBt" runat="server" CausesValidation="False" CommandName="Edit"
                            Text="编辑"></asp:LinkButton>
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
        </asp:GridView>
                  &nbsp;
              </td>
          </tr>
          <tr>
              <td align="left" bgcolor="#ffffff" colspan="3" style="height: 24px; width: 720px;">
        <asp:Button ID="btnAll" runat="server" Text="全选" CausesValidation ="false"  OnClick="btnAll_Click" />
        <asp:Button ID="btnReverse" runat="server" Text="反选" CausesValidation ="false"  OnClick="btnReverse_Click" />
        <asp:Button ID="btnCancell" runat="server" Text="取消" CausesValidation ="false"  OnClick="btnCancell_Click" />
        <asp:Button ID="btnDelete" runat="server" Text="删除"  CausesValidation ="false"  OnClick="btnDelete_Click" /></td>
          </tr>
      </table>
      <br />
      &nbsp; &nbsp;
      <br />
      <br />
        <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7" id="addtable">
      <tr>
        <td colspan="3" bgcolor="#FFFFFF" class="mainTitle" style="height: 20px">
            添加人员状态</td>
      </tr>
      <tr>
          <td bgcolor="#FFFFFF" align="right" style="height: 27px">
              人员状态:</td>
          <td bgcolor="#FFFFFF" style="height: 27px">&nbsp;
              <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*必填" ControlToValidate ="tbName" ValidationGroup ="1"></asp:RequiredFieldValidator>
              <asp:CheckBox ID="chbDetail" runat="server" Text="详情" /></td>
          <td bgcolor="#ffffff" style="height: 27px; width: 104px;">
              &nbsp;<asp:Button ID="btnAdd" runat="server" Text="添加" OnClick="btnAdd_Click" ValidationGroup ="1" /></td>
      </tr>
    </table>
     </div>
   <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(3);//当前位置顶部菜单标识
        leftMenuThisPage(1,5);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
    </script>
</asp:Content>
