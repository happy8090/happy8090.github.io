<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" ValidateRequest ="false"  CodeBehind="RegisterAgreement.aspx.cs" Inherits="WangQi.ERP.Web.admin.RegisterAgreement" Title="无标题页" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>
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
		<li><a href="RegisterAgreement.aspx">注册协议</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle" >
            注册协议</td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF" colspan="2" >
            <FCKeditorV2:FCKeditor ID="AgreementContent" runat="server" Height="450px" Width="100%"></FCKeditorV2:FCKeditor></td>
      </tr>

      <tr>
        <td align="right" bgcolor="#FFFFFF"></td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Button ID="Save" runat="server" Text="保存" CssClass="inputBt" OnClick="Save_Click" /></td>
      </tr>
    </table>
  </div>
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(3);//当前位置顶部菜单标识
        leftMenuThisPage(1,7);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>


