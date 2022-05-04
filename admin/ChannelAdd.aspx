<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="ChannelAdd.aspx.cs" Inherits="WangQi.ERP.Web.admin.ChannelAdd" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li><a href="ChannelList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">频道列表</a></li>
		<li><a href="ChannelEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">编辑频道</a></li>
		<li><a href="ChannelAdd.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">添加频道</a></li>
	</ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">添加频道&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainLeftTd" >
            频道名称:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="MenuName" runat="server" MaxLength="25"></asp:TextBox>
            <asp:RequiredFieldValidator ID="MenuNameValidator1" runat="server" ControlToValidate="MenuName"
                ErrorMessage="频道名称必须填写"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainLeftTd" >
            频道标识:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="FileName" runat="server" MaxLength="25"></asp:TextBox>
            <asp:RequiredFieldValidator ID="FileNameRequiredFieldValidator" runat="server" ControlToValidate="FileName"
                ErrorMessage="频道标识必须填写" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileName"
                Display="Dynamic" ErrorMessage="频道标识必须为小写字母或下划线组成" ValidationExpression="[a-z_]{0,30}"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="FileNameCustomValidator" runat="server" ControlToValidate="FileName"
                Display="Dynamic" ErrorMessage="此标识已经存在" OnServerValidate="FileNameCustomValidator_ServerValidate"></asp:CustomValidator></td>
      </tr>
      <tr id="locationTr">
        <td align="right" bgcolor="#FFFFFF"  >
            频道位置:</td>
        <td bgcolor="#FFFFFF"><asp:RadioButtonList ID="LocationList" runat="server" CssClass="radio" RepeatDirection="Horizontal" RepeatLayout="Flow">
            </asp:RadioButtonList>
      </tr>
      <tr id="attributerTr">
        <td align="right" bgcolor="#FFFFFF" >
           频道类型:</td>
        <td bgcolor="#FFFFFF"><asp:RadioButtonList ID="AttributerList" runat="server" CssClass="radio"
                RepeatLayout="Flow">
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="AttributerValidator" runat="server" ControlToValidate="AttributerList"
                Display="Dynamic" ErrorMessage="频道类型必须选择"></asp:RequiredFieldValidator><span class="explain"></span></td>
      </tr>
      <tr id="tr1" class="hide">
        <td align="right" bgcolor="#FFFFFF" style="height: 20px" >
            链接地址:</td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:TextBox ID="Href" runat="server"></asp:TextBox></td>
      </tr>
      
        <tr id="tr2">
            <td align="right" bgcolor="#ffffff">
                所属部门:</td>
            <td bgcolor="#ffffff"><asp:CheckBoxList ID="chkListGroup" runat="server" >
            </asp:CheckBoxList>
                <asp:Label ID="lbmessage" runat="server" Text="暂无所属部门" Visible ="false" ></asp:Label></td>
        </tr>
      <tr id="tr3">
        <td align="right" bgcolor="#FFFFFF" >  是否在导航位置显示:</td>
        <td bgcolor="#FFFFFF">
            <asp:RadioButtonList ID="Show" runat="server" CssClass="radio" RepeatDirection="Horizontal"
                RepeatLayout="Flow">
                <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                <asp:ListItem Value="0">否</asp:ListItem>
            </asp:RadioButtonList></td>
      </tr>
        <tr id="tr4">
            <td align="right" bgcolor="#ffffff">
                是否在首页位置显示:</td>
            <td bgcolor="#ffffff">
                <asp:RadioButtonList ID="MiddelShow" runat="server" CssClass="radio" RepeatDirection="Horizontal"
                RepeatLayout="Flow">
                    <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                    <asp:ListItem Value="0">否</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                是否在网站地图显示:</td>
            <td bgcolor="#ffffff">
                <asp:RadioButtonList ID="RBL_IsMapShow" runat="server" CssClass="radio" RepeatDirection="Horizontal"
                    RepeatLayout="Flow">
                    <asp:ListItem Value="0" Selected="True">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                频道归属:</td>
            <td bgcolor="#ffffff">
                <asp:RadioButtonList ID="RBL_Isleft" runat="server" RepeatDirection="Horizontal"
                    RepeatLayout="Flow">
                    <asp:ListItem Value="0">常用频道</asp:ListItem>
                    <asp:ListItem Value="1">稀用频道</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
      <tr id="tr5">
        <td align="right" bgcolor="#FFFFFF" >
            打开方式:</td>
        <td bgcolor="#FFFFFF">
            <asp:RadioButtonList ID="TargetList" runat="server" CssClass="radio" RepeatDirection="Horizontal"
                RepeatLayout="Flow">
            </asp:RadioButtonList></td>
      </tr>

      <tr>
        <td align="right" bgcolor="#FFFFFF"></td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Button ID="Add" runat="server" Text="添加频道" CssClass="inputBt" OnClick="Add_Click" /></td>
      </tr>
    </table>
  </div>
  <script language="JavaScript" type="text/javascript" >
        var op=location.search;
       if(op.toLowerCase().indexOf("hidden")>-1)
       {
        topMenuThisPage(2);//当前位置顶部菜单标识
       }
       else
       {
        topMenuThisPage(1);
       }
        leftMenuThisPage(1,1);//当前位置左侧菜单标识
        mainMenuThisPage(3);//当前选项卡标识
  </script>
</asp:Content>


