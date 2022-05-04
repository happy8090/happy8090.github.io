<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="Acredit.aspx.cs" Inherits="WangQi.ERP.Web.admin.Acredit" Title="无标题页" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" runat="server">
  <div id="mainMenu">
  	<ul>
		<li><a href="Acredit.aspx">域名授权</a></li></ul>
  </div>
   <div id="main">
<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
                          <tr>
                        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
                            授权信息</td>
                      </tr>
                      <tr>
                        <td align="right" bgcolor="#FFFFFF" class="mainLeftTd">授权状态:</td>
                        <td bgcolor="#FFFFFF">
                            <asp:Label ID="IsOkLabel" runat="server"></asp:Label></td>
                      </tr>
                      <tr>
                        <td align="right" bgcolor="#FFFFFF" class="mainLeftTd">授权域名:</td>
                        <td bgcolor="#FFFFFF">
                            <asp:Label ID="DomainNameLabel" runat="server"></asp:Label></td>
                      </tr>
                    </table> </div>
                    <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(4);//当前位置顶部菜单标识
        leftMenuThisPage(1,5);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>
