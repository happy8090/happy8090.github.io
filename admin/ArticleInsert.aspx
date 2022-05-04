<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true"   ValidateRequest ="false"  CodeBehind="ArticleInsert.aspx.cs" Inherits="WangQi.ERP.Web.admin.ArticleInsert" Title="无标题页" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" runat="server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" runat="server">
<div id="mainMenu">
  	<ul>
		<li>
		    <asp:HyperLink ID="ArticleLink" runat="server">添加文章</asp:HyperLink>
		</li>
		<li><a href="ArticleList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">管理文章</a></li><li><a href="ArticleEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">编辑文章</a></li><li><a href="ArticleClass.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">分类管理</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 编辑文章&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainContentLeftTd" >
            所属分类:
        </td>
        <td bgcolor="#FFFFFF" class="mainContentRightTd">
            &nbsp;<asp:DropDownList ID="ArticleClassIdList" runat="server" Enabled="false">
            </asp:DropDownList></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px" >
            文章标题:</td>
        <td bgcolor="#FFFFFF" style="height: 20px" >
            &nbsp;<asp:Label ID="LTitle" runat="server" CssClass="adminput" Text="Label"></asp:Label></td>
      </tr>

      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            文章内容:</td>
        <td bgcolor="#FFFFFF">&nbsp;
            </td>
      </tr>
      <tr>
        <td colspan="2" align="left"  bgcolor="#ffffff" >
            <div class="mainNoLeftTd">
               <FCKeditorV2:FCKeditor ID="ArticleContent" runat="server" Height="450px" Width="100%"></FCKeditorV2:FCKeditor></div>
        </td>
      </tr>         <tr>
        <td align="right" bgcolor="#FFFFFF" >
            添加关键字:</td>
        <td bgcolor="#FFFFFF">
            <asp:TextBox ID="tb_KeyWords" runat="server" MaxLength ="25" CssClass="adminput"></asp:TextBox>
            关键字之间用","隔开</td>
      </tr>   <tr>
        <td align="right" bgcolor="#FFFFFF" >
            文章编辑:</td>
        <td bgcolor="#FFFFFF">
            &nbsp;<asp:Label ID="Author" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            文章作者:</td>
        <td bgcolor="#FFFFFF">
            &nbsp;<asp:Label ID="labAuthor" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            文章来源:</td>
        <td bgcolor="#FFFFFF">
            &nbsp;<asp:Label ID="labSource" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px" >
            添加时间:</td>
        <td bgcolor="#FFFFFF" style="height: 20px">
            &nbsp;<asp:Label ID="AddTime" runat="server" Text="Label"></asp:Label>
            &nbsp;
        </td>
      </tr>

      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px"></td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="Edit" runat="server" Text="保  存" CssClass="inputBt" OnClick="Add_Click"  />
            <asp:Button ID="Insert" runat ="server" Text="插入页" CssClass ="inputBt" OnClick ="Insert_Click" /></td>
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
        mainMenuThisPage(3);//当前选项卡标识
  </script>
</asp:Content>
