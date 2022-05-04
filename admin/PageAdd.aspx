<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" ValidateRequest ="false"  CodeBehind="PageAdd.aspx.cs" Inherits="WangQi.ERP.Web.admin.PageAdd" Title="无标题页" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li>
            <asp:HyperLink ID="PageLink" runat="server">频道内容</asp:HyperLink>
        </li>
		<li><a href="PageAdd.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">添加子频道</a></li><li><a href="PageList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">子频道列表</a></li><li><a href="PageEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">子频道内容</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 添加子频道&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainContentLeftTd" >
            所属父频道:    
        </td>
        <td bgcolor="#FFFFFF" class="mainContentRightTd">
            <asp:DropDownList ID="ParentIdList" runat="server">
            </asp:DropDownList></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            子频道标题:</td>
        <td bgcolor="#FFFFFF" >
            <asp:TextBox ID="PageTitle" runat="server" MaxLength ="25"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PageTitle"
                Display="Dynamic" ErrorMessage="子频道标题必须填写"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            子频道标识:</td>
        <td bgcolor="#FFFFFF">
            <asp:TextBox ID="FileName" runat="server" MaxLength ="25"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileName"
                Display="Dynamic" ErrorMessage="子频道标识必须填写"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileName"
                Display="Dynamic" ErrorMessage="必须为小写字母或下划线组成" ValidationExpression="[a-z_]{0,30}"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="FileName"
                Display="Dynamic" ErrorMessage="此标识已经存在" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            子频道内容:</td>
        <td bgcolor="#FFFFFF">&nbsp;
            </td>
      </tr>
      <tr>
        <td colspan="2" align="left"  bgcolor="#ffffff" >
            <div class="mainNoLeftTd">
                <FCKeditorV2:FCKeditor ID="PageContent" runat="server" Height="250px" Width="100%"></FCKeditorV2:FCKeditor>
            </div>
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px"></td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="Add" runat="server" Text="添加" CssClass="inputBt" OnClick="Add_Click"  /></td>
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
        topMenuThisPage(1);//当前位置顶部菜单标识
       }
        //topMenuThisPage(2);//当前位置顶部菜单标识
        contentSubMenuThisPage();//当前位置左侧菜单标识
        mainMenuThisPage(2);//当前选项卡标识
  </script>
</asp:Content>


