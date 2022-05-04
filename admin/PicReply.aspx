<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="PicReply.aspx.cs" Inherits="WangQi.ERP.Web.admin.PicReply" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li>
		    <A href="#">评论</A>
		</li>
		
  </div>
   <div id="main">
   <asp:Repeater ID="ReplyRepeater" runat="server" EnableViewState="true" OnItemCommand="ReplyRepeater_ItemCommand">
<ItemTemplate>
<table width="500" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25">评论人：<%# Eval("Reply")%></td>
    <td height="25">评论IP：<%# Eval("ReplyIP")%></td>
    <td height="25">评论时间：<%# Eval("ReplyTime")%></td>
    <td height="25">
        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" CommandArgument='<%# Eval("ID") %>'>删除</asp:LinkButton></td>
  </tr>
  <tr>
    <td colspan="4">评论内容：<%# Eval("ReplyText")%></td>
  </tr>
</table>
</ItemTemplate>
</asp:Repeater><br />
<asp:TextBox ID="txtReplyContent" runat="server" Height="69px" TextMode="MultiLine" Width="494px" EnableViewState="False"></asp:TextBox>
<br />
<asp:Button ID="btnSend" Text="回复" runat="server" EnableViewState="False" OnClick="btnSend_Click" />
    
   
  
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
        mainMenuThisPage(1);//当前选项卡标识
  </script>
  </div>

</asp:Content>


