<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="WebInfo.aspx.cs" Inherits="WangQi.ERP.Web.admin.WebInfo" Title="无标题页" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>
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
		<li><a href="WebInfo.aspx">网站信息</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            网站信息设置&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainLeftTd">
            网站作者:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="WebsiteName" CssClass="adminput" runat="server"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="WebsiteName"
                Display="Dynamic" ErrorMessage="网站作者不能为空"></asp:RequiredFieldValidator>
            <span class="explain"></span></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px" >
            网站标题:</td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:TextBox ID="WebsiteTitle" CssClass="adminput" runat="server"></asp:TextBox><span class="explain">&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="WebsiteTitle"
                Display="Dynamic" ErrorMessage="网站标题必须填写"></asp:RequiredFieldValidator></span></td>
      </tr>
      <tr>
            <td align="right" bgcolor="#ffffff" style="height: 20px">
                网站地址:</td>
            <td bgcolor="#ffffff" style="height: 20px">
                &nbsp;<asp:TextBox ID="TB_Url" runat="server" CssClass="adminput"></asp:TextBox><span class="explain">&nbsp;
                    </span></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" style="height: 20px">
                网站关键字:<br />
keywords</td>
            <td bgcolor="#ffffff" style="height: 20px">
                &nbsp;<asp:TextBox ID="KeyWords" CssClass="adminput" runat="server"></asp:TextBox><span class="explain">&nbsp;
                    关键字之间请用 , 隔开</span></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                网站描述:<br />
description</td>
            <td bgcolor="#ffffff">
                &nbsp;<asp:TextBox ID="Description" runat="server" Rows="5" CssClass="adminput" TextMode="MultiLine"></asp:TextBox><span class="explain">&nbsp;
                    针对搜索引擎的描述</span></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                是否采用伪静态:</td>
            <td bgcolor="#ffffff">
                &nbsp;<span class="explain">&nbsp;<asp:RadioButtonList ID="RBL_IsHtml" runat="server"
                    RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                    <asp:ListItem Value="1">是</asp:ListItem>
                </asp:RadioButtonList>
                    &nbsp; &nbsp; <a href="http://www.wqcwms.com/help/html/501.htm" target="_blank">帮助</a>
                </span></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" style="height: 54px">
                网站LOGO:</td>
            <td bgcolor="#ffffff" style="height: 54px">
                <FCKeditorV2:FCKeditor ID="WebsiteLogo" runat="server" Height="300px" Width="100%"></FCKeditorV2:FCKeditor><span class="explain">&nbsp;
                    </span></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" style="height: 54px">
                版权信息:</td>
            <td bgcolor="#ffffff" style="height: 54px">
                <FCKeditorV2:FCKeditor ID="WebsiteBottm" runat="server" Height="300px" Width="100%"></FCKeditorV2:FCKeditor><span class="explain">&nbsp;
                    </span></td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"></td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Button ID="Save" runat="server" Text="保存设置" CssClass="inputBt" OnClick="Save_Click" /></td>
      </tr>
    </table>
  </div>
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(4);//当前位置顶部菜单标识
        leftMenuThisPage(1,2);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>


