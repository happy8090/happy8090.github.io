<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="LoginInfo.aspx.cs" Inherits="WangQi.ERP.Web.admin.LoginInfo" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
  	<div class="leftMenuTitle">
		基本设置
	</div>
	<ul class="leftMenu">
		<li><a href="LoginInfo.aspx">登陆信息</a></li>
		<li><a href="WebInfo.aspx">网站信息</a></li>
		<li><a href="ChannelSet.aspx">频道设置</a></li>
		<li><a href="SiteMenuList.aspx">频道ID</a></li>
		<li><a href="Acredit.aspx">授权信息</a></li>
		<%--<li><a href="OrderSet.aspx">订购配置</a></li>
		<li><a href="SysTemplet.aspx">系统模板</a></li>--%>
	</ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
				  <div id="mainMenu">
				  	<ul>
						<li><a href="LoginInfo.aspx">管理员信息</a></li></ul>
				  </div>
				<div id="main">
                    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
                      <tr>
                        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">此次登陆管理员信息&nbsp;[<asp:HyperLink ID="AdministratorsInfo" runat="server" NavigateUrl="~/admin/AdministratorsInfo.aspx" CssClass="link">修改</asp:HyperLink>]</td>
                      </tr>
                      <tr>
                        <td align="right" bgcolor="#FFFFFF" width="20%">管理员:</td>
                        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="ManagerName" runat="server"></asp:Label></td>
                      </tr>
                      <tr>
                        <td align="right" bgcolor="#FFFFFF">登陆次数:</td>
                        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="LoginCount" runat="server"></asp:Label></td>
                      </tr>
                      <tr>
                        <td align="right" bgcolor="#FFFFFF">添加时间:</td>
                        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="AddTime" runat="server"></asp:Label></td>
                      </tr>
                      <tr>
                        <td align="right" bgcolor="#FFFFFF">更新时间:</td>
                        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="UpTime" runat="server"></asp:Label></td>
                      </tr>
                      <tr>
                        <td align="right" bgcolor="#FFFFFF">
                            上次登陆时间:</td>
                        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="LastLoginTime" runat="server"></asp:Label></td>
                      </tr>
                      
                      <tr>
                        <td align="right" bgcolor="#FFFFFF">上次登陆IP:</td>
                        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="LastLoginIP" runat="server"></asp:Label></td>
                      </tr>

                      <tr>
                        <td align="right" bgcolor="#FFFFFF">此次登陆时间:</td>
                        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="LoginTime" runat="server"></asp:Label></td>
                      </tr>
                      <tr>
                        <td align="right" bgcolor="#FFFFFF">此次登陆IP:</td>
                        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="LoginIP" runat="server"></asp:Label></td>
                      </tr>
                    </table>
				  </div>
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(4);//当前位置顶部菜单标识
        leftMenuThisPage(1,2);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>

