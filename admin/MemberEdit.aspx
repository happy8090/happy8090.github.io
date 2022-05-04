<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" ValidateRequest ="false"  CodeBehind="MemberEdit.aspx.cs" Inherits="WangQi.ERP.Web.admin.MemberEdit" Title="无标题页" %>


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
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            编辑人员资料</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            人员ID:</td>
        <td bgcolor="#FFFFFF" >
            <asp:Label ID="ShowMemberId" runat="server" ForeColor="Red"></asp:Label>
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"  class="mainLeftTd"  >
            用户名:</td>
        <td bgcolor="#FFFFFF"  >
            &nbsp;
            <asp:Label ID="MemberName" runat="server"></asp:Label></td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" style="height: 20px">
                密码:</td>
            <td bgcolor="#ffffff" style="height: 20px">
                <asp:TextBox ID="PassWord" runat="server"></asp:TextBox><span class="explain">&nbsp;不修改清留空<asp:HiddenField
                    ID="TempPassword" runat="server" />
                </span></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" style="height: 20px">
                找回密码问题:</td>
            <td bgcolor="#ffffff" style="height: 20px">
                <asp:TextBox ID="tbQuestion" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" style="height: 20px">
                找回密码答案:</td>
            <td bgcolor="#ffffff" style="height: 20px">
                <asp:TextBox ID="tbAnswer" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" style="height: 20px">
                所属部门:</td>
            <td bgcolor="#ffffff" style="height: 20px">
                <asp:DropDownList ID="ddlList" runat="server">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                姓名:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="FullName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                性别:</td>
            <td bgcolor="#ffffff">
                <asp:DropDownList ID="Sex" runat="server">
                    <asp:ListItem Value="true">男</asp:ListItem>
                    <asp:ListItem Value="false">女</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                Email:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                电话:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="Tel" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                传真:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="Fax" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                地址:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="Address" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                QQ:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="QQ" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                MSN:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="Msn" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                注册时间:</td>
            <td bgcolor="#ffffff">
                <asp:Label ID="RegTime" runat="server"></asp:Label></td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            注册IP:</td>
        <td bgcolor="#FFFFFF">
            <asp:Label ID="RegIp" runat="server"></asp:Label></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" ></td>
        <td bgcolor="#FFFFFF" >&nbsp;<asp:Button ID="Edit" runat="server" Text="编辑资料" CssClass="inputBt" OnClick="Edit_Click"  /></td>
      </tr>
    </table>
  </div>
    <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(3);//当前位置顶部菜单标识
        leftMenuThisPage(1,1);//当前位置左侧菜单标识
        mainMenuThisPage(2);//当前选项卡标识
    </script>
</asp:Content>


