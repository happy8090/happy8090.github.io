<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true"  ValidateRequest ="false" CodeBehind="SiteAdAdd.aspx.cs" Inherits="WangQi.ERP.Web.admin.SiteAdAdd" Title="无标题页"  %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
<div class="leftMenuTitle">
		广告幻灯
	</div>
	<ul class="leftMenu">
		<li><a href="SiteAdManage.aspx">广告列表</a></li>
		<li><a href="SiteAdAdd.aspx">添加广告</a></li>
		<li><a href="XmlWebManage.aspx">幻灯列表</a></li>
		<li><a href="XmlWeb.aspx">添加幻灯</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">

  <div id="mainMenu">
  	<ul>
		<li><a href="SiteAdAdd.aspx">添加广告</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            </td>
      </tr>
      
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            广告标题:</td>
        <td bgcolor="#FFFFFF" >
            <asp:TextBox ID="AdTitle" runat="server" CssClass="adminput"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AdTitle"
                Display="Dynamic" ErrorMessage="广告标题必须填写"></asp:RequiredFieldValidator></td>
      </tr>      
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            广告内容:</td>
        <td bgcolor="#FFFFFF">&nbsp;
            </td>
      </tr>
      <tr>
        <td colspan="2" align="left"  bgcolor="#ffffff" >
          
                &nbsp;<FCKeditorV2:FCKeditor ID="AdContent" runat="server" Height="250px" Width="100%"></FCKeditorV2:FCKeditor>
        </td>
      </tr>
      
      
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px"></td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="Add" runat="server" Text="保  存" CssClass="inputBt" OnClick="Add_Click"  />
            </td>
      </tr>
    </table>
<script language="JavaScript" type="text/javascript" >      
        topMenuThisPage(6);//当前位置顶部菜单标识
        leftMenuThisPage(1,2);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>

