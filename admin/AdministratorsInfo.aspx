<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="AdministratorsInfo.aspx.cs" Inherits="WangQi.ERP.Web.admin.AdministratorsInfo" Title="无标题页" %>
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
		<li><a href="AdministratorsInfo.aspx">修改管理员</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">管理员信息&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainLeftTd">管理员名:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="ManagerName" runat="server"></asp:Label></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            昵称:</td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:TextBox ID="PenName" runat="server"></asp:TextBox><span class="explain">&nbsp;
           </span></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            旧密码:</td>
        <td bgcolor="#FFFFFF">
            &nbsp;<asp:TextBox ID="OldPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="旧密码错误！"
                OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="OldPassword"></asp:CustomValidator><span class="explain">不修改留空</span></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF">
            新密码:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Password"
                Display="Dynamic" ErrorMessage="密码至少六位" ValidationExpression="\w{6,32}"></asp:RegularExpressionValidator><span
                    class="explain">不修改留空</span></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF">
            确认新密码:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="AffirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="AffirmPassword"
                ControlToValidate="Password" Display="Dynamic" ErrorMessage="两次密码不一致"></asp:CompareValidator><span
                    class="explain">不修改留空</span></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"></td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Button ID="Chanage" runat="server" Text="提交修改" CssClass="inputBt" OnClick="Chanage_Click" /></td>
      </tr>
    </table>
  </div>
  <script language="JavaScript" type="text/javascript" >
       topMenuThisPage(3);//当前位置顶部菜单标识
        leftMenuThisPage(1,6);//当前位置左侧菜单标识
        mainMenuThisPage(3);//当前选项卡标识
  </script>
</asp:Content>





