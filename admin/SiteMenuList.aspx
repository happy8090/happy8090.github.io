<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="SiteMenuList.aspx.cs" Inherits="WangQi.ERP.Web.admin.SiteMenuList" Title="无标题页" %>
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
		<li><a href="WebInfo.aspx">频道ID管理</a></li></ul>
  </div>
   <div id="main">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="频道ID" />
                <asp:BoundField DataField="MenuName" HeaderText="频道名称" >
                    <ItemStyle HorizontalAlign="Left" CssClass="MenuName" />
                </asp:BoundField>
                <asp:BoundField DataField="FileType" HeaderText="频道类型" />
                <asp:BoundField DataField="FileName" HeaderText="频道标识" />
            </Columns>
        <RowStyle CssClass="gvRow" HorizontalAlign="Center" />
        <EditRowStyle CssClass="gvEditRow" />
        <PagerStyle CssClass="gvPage" />
        <HeaderStyle CssClass="gvHeader" />
        <AlternatingRowStyle CssClass="gvAlternatingRow" />
        </asp:GridView>
  </div>
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(4);//当前位置顶部菜单标识
        leftMenuThisPage(1,4);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>
