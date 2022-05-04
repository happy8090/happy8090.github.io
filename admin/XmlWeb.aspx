<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" ValidateRequest ="false"  CodeBehind="XmlWeb.aspx.cs" Inherits="WangQi.ERP.Web.admin.XmlWeb" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <div class="leftMenuTitle">
		广告幻灯
	</div>
	<ul class="leftMenu">
		<li><a href="SiteAdManage.aspx">广告列表</a></li>
		<li><a href="SiteAdAdd.aspx">添加广告</a></li>
		<li><a href="XmlWebManage.aspx">幻灯列表</a></li>
		<li><a href="XmlWeb.aspx">添加幻灯</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li><a href="XmlWeb.aspx">添加幻灯</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            添加幻灯</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"  class="mainContentLeftTd"  >
            标题:</td>
        <td bgcolor="#FFFFFF" class="mainContentRightTd" >
            <asp:TextBox ID="tb_title" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_title"
                ErrorMessage="RequiredFieldValidator">不能为空！</asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            图片路径:</td>
        <td bgcolor="#FFFFFF">
            <asp:FileUpload ID="FilePic" runat="server" />
            引用路径：<asp:TextBox ID="TeB_Url" runat="server"></asp:TextBox>
            </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            连接地址:</td>
        <td bgcolor="#FFFFFF">
            <asp:TextBox ID="tb_url" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_url"
                ErrorMessage="RequiredFieldValidator">不能为空！</asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px"></td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="bt_save" runat="server" OnClick="bt_save_Click" Text="保存" /></td>
      </tr>
    </table>
  </div>
  <script language="JavaScript" type="text/javascript" >      
        topMenuThisPage(6);//当前位置顶部菜单标识
        leftMenuThisPage(1,4);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>