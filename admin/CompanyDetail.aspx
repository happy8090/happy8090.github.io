<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="CompanyDetail.aspx.cs" Inherits="WangQi.ERP.Web.admin.CompanyDetail" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <div class="leftMenuTitle">
		人员管理
	</div>
	<ul class="leftMenu">
	    <li><a href="MemberList.aspx">网站人员</a></li>
		<li><a href="MemberAdd.aspx">添加人员</a></li>
		<li><a href="MemberGroup.aspx">所属部门</a></li>
		<li><a href="AdministratorsList.aspx">管理员</a></li>
		<li><a href="AdministratorsAdd.aspx">添加管理员</a></li>
		<li><a href="RegisterAgreement.aspx">注册协议</a></li>
		<li><a href="SysLog.aspx">登录日志 </a></li>
		<li><a href="MemberState.aspx">人员状态 </a></li>
		<li><a href="CompanyList.aspx">机关人员 </a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>

  	<li><a href="MemberList.aspx">人员详情</a></li>
    <li><a href="CompanyList.aspx">人员列表</a></li>
	</ul>
  </div>
   <div id="main"> 
   <div>
        姓名：<asp:Literal ID="UserName" runat="server"></asp:Literal><br />
        情况：<asp:Literal ID="StateName" runat="server"></asp:Literal><br />
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
          时间：<%# Eval("AddTime")%><br />   IP：<%# Eval("IP") %><br />
          原因：<%# Eval("StateDetail") %>
        </ItemTemplate>
        </asp:Repeater>
    
    </div>
<br />
       &nbsp; &nbsp;
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(3);//当前位置顶部菜单标识
        leftMenuThisPage(1,1);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script> </div>
</asp:Content>