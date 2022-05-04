<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="SiteAdManage.aspx.cs" Inherits="WangQi.ERP.Web.admin.SiteAdManage" Title="无标题页" %>

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
		<li><a href="SiteAdManage.aspx">广告列表</a></li><li><a href="SiteAdEdit.aspx">编辑广告</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7" id="mainTopTable">
      <tr>
        <td colspan="3" bgcolor="#FFFFFF" class="mainTitle">
            广告检索&nbsp;</td>
      </tr>
      <tr>
          <td bgcolor="#FFFFFF" align="right">
              广告标题/内容:</td>
          <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="NoticeTitle" runat="server" CssClass="inputText"></asp:TextBox>
              <asp:HiddenField ID="IsSearch" runat="server" Value="0" />
          </td>
          <td bgcolor="#ffffff">
              <asp:Button ID="Search" runat="server" CssClass="inputBt" Text="广告检索" OnClick="Search_Click" ValidationGroup="NoticeSearch" /></td>
      </tr>
    </table>
   <asp:GridView ID="gvNoticeList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="NoticeList_PageIndexChanging" DataKeyNames="ID" OnRowCancelingEdit="NoticeList_RowCancelingEdit" OnRowEditing="NoticeList_RowEditing" OnRowUpdating="NoticeList_RowUpdating" PageSize="11" CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="暂无任何广告" >
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:BoundField DataField="Ad_Title" HeaderText="广告标题" ReadOnly="True" SortExpression="Ad_Title" />
            <asp:BoundField DataField="Ad_Date" HeaderText="添加时间" ReadOnly="True" SortExpression="Ad_Date" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="SiteAdEdit.aspx?ADId={0}"
                HeaderText="编辑广告" Text="编辑广告">
                <ItemStyle CssClass="gvBtAField" />
            </asp:HyperLinkField>
            <asp:TemplateField HeaderText="删除">
                <EditItemTemplate>
                    <asp:CheckBox ID="chkDelete" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="chkDelete" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle CssClass="gvRow" />
        <EditRowStyle CssClass="gvEditRow" />
        <PagerStyle CssClass="gvPage" />
        <HeaderStyle CssClass="gvHeader" />
        <AlternatingRowStyle CssClass="gvAlternatingRow" />
    </asp:GridView>
<br />

  
    <asp:Button ID="btnAll" runat="server" Text="全选" OnClick="btnAll_Click" />
    <asp:Button ID="btnReverse" runat="server" Text="反选" OnClick="btnReverse_Click" />
    <asp:Button ID="btnCancell" runat="server" Text="取消" OnClick="btnCancell_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="btnDelete_Click" />
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(6);//当前位置顶部菜单标识
        leftMenuThisPage(1,1);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script></div>
</asp:Content>
