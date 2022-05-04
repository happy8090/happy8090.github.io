<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="SearchCategory.aspx.cs" Inherits="WangQi.ERP.Web.admin.SearchCategory" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" runat="server">
    <div class="leftMenuTitle">
		系统管理
	</div>
	<ul class="leftMenu">
	    <li><a href="NoticeList.aspx">公告管理</a></li>
		<li><a href="VoteAdd.aspx">投票管理</a></li>
		<li><a href="FriendLinkAdd.aspx">友情链接</a></li>
		<li><a href="searchCategory.aspx">搜索管理</a></li>
		<li><a href="OrderSet.aspx">订购配置</a></li>
		<li><a href="SysTemplet.aspx">系统模板</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" runat="server">
<div id="mainMenu">
  	<ul>
		<li><a href="SearchCategory.aspx">搜索类别</a></li></ul>
  </div>
  <div id="main">
    <asp:Label ID="lbMessage" runat="server" Text="" Visible ="false"></asp:Label><br />
                    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
                      <tr>
    <td colspan="3" bgcolor="#FFFFFF" class="mainTitle" style="height: 20px">
    <asp:Label ID="lbLetKnow" runat ="server" Text ="请根据您网站的频道类别设置搜索类别的显示情况" ></asp:Label>
    </td>
    </tr>
      <tr>
          <td bgcolor="#FFFFFF" style="height: 98px" class="MenuName">
    <asp:CheckBoxList ID="cblCategory" runat="server" DataTextField ="CategoryName" DataValueField ="ID">
        </asp:CheckBoxList>
        </td></tr><tr><td bgcolor="#FFFFFF">
        
        <asp:Button ID="btnAdd" runat="server" Text="显示所选" OnClick="btnAdd_Click1" />
    </td>
    </tr>
    </table>
    </div>
      <script language="JavaScript" type="text/javascript" >      
        topMenuThisPage(5);//当前位置顶部菜单标识
        leftMenuThisPage(1,4);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>
