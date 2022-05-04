<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="FriendLinkEdit.aspx.cs" Inherits="WangQi.ERP.Web.admin.FriendLinkEdit" Title="无标题页" %>

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
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            编辑链接</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            链接ID:</td>
        <td bgcolor="#FFFFFF" >
            <asp:Label ID="ShowFriendLinkId" runat="server" ForeColor="Red"></asp:Label>
        </td>
      </tr>
        <tr id="typeTr">
            <td align="right" bgcolor="#ffffff"  class="mainLeftTd" >
                链接类型:</td>
            <td bgcolor="#ffffff">
                <asp:RadioButtonList ID="TypeList" runat="server" CssClass="radio" RepeatDirection="Horizontal"
                    RepeatLayout="Flow">
                    <asp:ListItem Selected="True" Value="false">文字链接</asp:ListItem>
                    <asp:ListItem Value="true">图片链接</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                网站地址:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="Url" CssClass="adminput" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Url"
                    Display="Dynamic" ErrorMessage="地址必须填写"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Url"
                    Display="Dynamic" ErrorMessage="链接地址格式错误" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"></asp:RegularExpressionValidator></td>
        </tr>
      <tr id="tr1">
        <td align="right" bgcolor="#FFFFFF"  >
            网站名称:</td>
        <td bgcolor="#FFFFFF" >
            <asp:TextBox ID="FriendLinkTitle" CssClass="adminput" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="链接文字必须填写"
                OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator></td>
      </tr>
        <tr id="tr2" class="hide">
            <td align="right" bgcolor="#ffffff">
                Logo图片:</td>
            <td bgcolor="#ffffff">
                <asp:FileUpload ID="Logo" runat="server" />
                <asp:CustomValidator ID="LogoCustomValidator" CssClass="adminpur" runat="server"
                    Display="Dynamic" ErrorMessage="Logo文件格式错误" OnServerValidate="LogoCustomValidator_ServerValidate"></asp:CustomValidator>
                <asp:HyperLink ID="LogoPath" runat="server" Target="_blank">预览原Logo</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                网站简介:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="friendLinkDescribe" CssClass="adminbox" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px"></td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="Edit" runat="server" Text="编辑链接" CssClass="inputBt" OnClick="Edit_Click"  /></td>
      </tr>
    </table>
  </div>
    <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(5);//当前位置顶部菜单标识
        leftMenuThisPage(1,3);//当前位置左侧菜单标识
        mainMenuThisPage(3);//当前选项卡标识
        radioFriendLinkLoad()//初始化显示
    </script>
</asp:Content>


