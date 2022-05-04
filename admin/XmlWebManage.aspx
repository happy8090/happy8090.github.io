<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="XmlWebManage.aspx.cs" Inherits="WangQi.ERP.Web.admin.XmlWebManage" Title="无标题页" %>

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
		<li><a href="XmlWebManage.aspx">幻灯列表</a></li><li><a href="XmlWebEdit.aspx">编辑幻灯</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID,item_url" OnRowDeleting="GridView1_RowDeleting" Width="100%">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" />
                <asp:BoundField DataField="titles" HeaderText="标题" />
                <asp:BoundField DataField="item_url" HeaderText="图片地址" />
                <asp:BoundField DataField="link" HeaderText="链接地址" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                      <a href='XmlWebEdit.aspx?ID=<%# Eval("ID") %>'>修改</a>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClientClick="return confirm('是否删除！')" CommandName="Delete"
                            Text="删除"></asp:LinkButton>
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

  
    
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(6);//当前位置顶部菜单标识
        leftMenuThisPage(1,3);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script></div>
</asp:Content>

