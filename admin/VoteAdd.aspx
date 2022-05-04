<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="VoteAdd.aspx.cs" Inherits="WangQi.ERP.Web.admin.VoteAdd" Title="无标题页" %>


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
		<li><a href="VoteAdd.aspx">添加投票</a></li><li><a href="VoteList.aspx">投票管理</a></li><li><a href="VoteEdit.aspx">编辑投票</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            添加投票</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"  class="mainLeftTd" >
            投票标题:</td>
        <td bgcolor="#FFFFFF" >
            <asp:TextBox ID="VoteTitle" CssClass="adminput" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="VoteTitle"
                Display="Dynamic" ErrorMessage="投票标题必须填写"></asp:RequiredFieldValidator></td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                投票类型:</td>
            <td bgcolor="#ffffff">
                <asp:RadioButtonList ID="TypeList" runat="server" CssClass="radio" RepeatDirection="Horizontal"
                    RepeatLayout="Flow">
                    <asp:ListItem Value="false">单选投票</asp:ListItem>
                    <asp:ListItem Value="true">多选投票</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TypeList"
                    Display="Dynamic" ErrorMessage="投票类型必须选择"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                是否锁定:</td>
            <td bgcolor="#ffffff">
                <asp:RadioButtonList ID="LockedList" runat="server" CssClass="radio" RepeatDirection="Horizontal"
                    RepeatLayout="Flow">
                    <asp:ListItem Selected="True" Value="false">否</asp:ListItem>
                    <asp:ListItem Value="true">是</asp:ListItem>
                </asp:RadioButtonList>
                <span  class="explain">
                锁定后将不能再进行投票</span></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                投票选项:  <br />
(每行为一项)          </td>
            <td bgcolor="#ffffff"><asp:TextBox ID="LabelStr" runat="server" Rows="5" TextMode="MultiLine" CssClass="adminbox"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="LabelStr"
                            Display="Dynamic" ErrorMessage="投票选项列表必须填写&lt;br /&gt;"></asp:RequiredFieldValidator>
            </td></tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            初始化票数:<br />
(每项都要指定)</td>
        <td bgcolor="#FFFFFF">
            <asp:TextBox ID="ValueStr" runat="server" Rows="5" TextMode="MultiLine" CssClass="adminbox"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ValueStr"
                        Display="Dynamic" ErrorMessage="初始化票数必须填写<br />"></asp:RequiredFieldValidator>
            </td>
      </tr>
      <tr>
            <td align="right" bgcolor="#ffffff">
                是否显示:</td>
            <td bgcolor="#ffffff">
                <asp:RadioButtonList ID="rblIsDisplay" runat="server" CssClass="radio" RepeatDirection="Horizontal"
                    RepeatLayout="Flow">
                    <asp:ListItem Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1" Selected="True">否</asp:ListItem>
                </asp:RadioButtonList>
                </td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px"></td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="Add" runat="server" Text="添加投票" CssClass="inputBt" OnClick="Add_Click"  /></td>
      </tr>
    </table>

  </div>
  <script language="JavaScript" type="text/javascript" >      
        topMenuThisPage(5);//当前位置顶部菜单标识
        leftMenuThisPage(1,2);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>


