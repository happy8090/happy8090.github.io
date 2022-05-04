<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="SysTemplet.aspx.cs" Inherits="WangQi.ERP.Web.admin.SysTemplet" Title="无标题页" %>
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
		<li><a href="SysTemplet.aspx">系统模板</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <asp:GridView ID="TemplateList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="TemplateList_PageIndexChanging" DataKeyNames="value" PageSize="11" CellPadding="0" CssClass="gv" Width="100%" OnRowDataBound="TemplateList_RowDataBound" OnRowCommand="TemplateList_RowCommand">
        <Columns>
            <asp:TemplateField FooterText="模板文件夹" HeaderText="模板文件夹">
                <EditItemTemplate>
                    &nbsp;
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="TemplateFolderLable" runat="server" Text='<%# Bind("value") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="当前模版">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ControlStyle CssClass="checkBox" />
                <ItemTemplate>
                    <asp:CheckBox ID="TemplateCheckBox" runat="server" Checked='<%# Eval("value").ToString().Trim()==_defaultTemplate %>' Enabled="False" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="启用模板" ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="EnabledBt" runat="server" Text="启用模板" CausesValidation="False" CommandName="TemplateEnabled" CssClass="inputBt" Enabled='<%# !(Eval("value").ToString().Trim()==_defaultTemplate) %>' CommandArgument='<%# Eval("value").ToString().Trim() %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="更新模板" ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="UpdateBt" runat="server" CommandName="UpdateTemplate"
                        Text="更新模板" CssClass="inputBt" Enabled='<%# Eval("value").ToString().Trim()==_defaultTemplate %>' CommandArgument='<%# Eval("value").ToString().Trim() %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="删除模板" ShowHeader="False">
                <EditItemTemplate>
                    &nbsp;
                </EditItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:Button ID="DelBt" runat="server" CausesValidation="False" CommandName="DeleteTemplate" Text="删除模板" CssClass="inputBt" Enabled='<%# !(Eval("value").ToString().Trim()==_defaultTemplate) %>' CommandArgument='<%# Eval("value").ToString().Trim() %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle CssClass="gvRow" />
        <EditRowStyle CssClass="gvEditRow" />
        <PagerStyle CssClass="gvPage" />
        <HeaderStyle CssClass="gvHeader" />
        <AlternatingRowStyle CssClass="gvAlternatingRow" />
    </asp:GridView>
    <asp:HiddenField ID="PostMangerName" runat="server" />
    <asp:HiddenField ID="PostPassword" runat="server" />
  </div>
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(5);//当前位置顶部菜单标识
        leftMenuThisPage(1,5);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>


