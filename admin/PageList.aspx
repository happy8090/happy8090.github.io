<%@ Page Language="C#" MasterPageFile="../admin/main.Master" AutoEventWireup="true" CodeBehind="PageList.aspx.cs" Inherits="WangQi.ERP.Web.admin.PageList" Title="无标题页" %>
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
        <li><a href="PageAdd.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">添加子频道</a></li>
		<li><a href="PageList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">子频道列表</a></li>
		<li><a href="PageEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">子频道内容</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <asp:GridView ID="gvPageList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="PageList_PageIndexChanging" DataKeyNames="SinglePageId" OnRowCancelingEdit="PageList_RowCancelingEdit" OnRowEditing="PageList_RowEditing" OnRowUpdating="PageList_RowUpdating" PageSize="11"  CellPadding="0" CssClass="gv" Width="100%" OnRowDataBound="PageList_RowDataBound" >
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="排序号" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="频道名称">
                <EditItemTemplate>
                    <asp:TextBox ID="PageTitle" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("TitleText") %>'></asp:Label>
                    <asp:HiddenField ID="ParentIdHiddenField" runat="server" Value='<%# Bind("ParentId") %>' />
                </ItemTemplate>
                <ItemStyle CssClass="gvLeftField" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="频道标识">
                <EditItemTemplate>
                    <asp:TextBox ID="FileName" runat="server" Text='<%# Bind("FileName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileName"
                        Display="Dynamic" ErrorMessage="必须填写"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileName"
                        Display="Dynamic" ErrorMessage="子频道标识必须为小写字母或下划线组成" ValidationExpression="[a-z_]{0,50}"></asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="FileName"
                        Display="Dynamic" ErrorMessage="已存在此标识" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("FileName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作" ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="UpdateBt" runat="server" CausesValidation="True" CommandName="Update"
                        Text="更新" />
                    <asp:Button ID="CancelBt" runat="server" CausesValidation="False" CommandName="Cancel"
                        Text="取消" />    
                </EditItemTemplate>
                <ItemStyle CssClass="gvCommandField" />
                <ItemTemplate>
                    <asp:Button ID="EditBt" runat="server" Text="编辑" CausesValidation="false" CommandName="Edit" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="内容管理">
                <ItemStyle CssClass="gvBtAField" />
                <ItemTemplate>
                    <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("SinglePageId", "PageEdit.aspx?singlePageId={0}") %>'
                        Text="内容管理"></asp:HyperLink>--%>
                        <a href='PageEdit.aspx?singlePageId=<%# Eval("SinglePageId") %><%# Request.Params["op"] == null ? "" : "&op=Hidden" %>'>内容管理</a>
                </ItemTemplate>
            </asp:TemplateField>
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
    </asp:GridView>   <br />
 <asp:Button ID="btnAll" runat="server" Text="全选" OnClick="btnAll_Click" />
    <asp:Button ID="btnReverse" runat="server" Text="反选" OnClick="btnReverse_Click" />
    <asp:Button ID="btnCancell" runat="server" Text="取消" OnClick="btnCancell_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="btnDelete_Click" />
  <script language="JavaScript" type="text/javascript" >
        //topMenuThisPage(2);//当前位置顶部菜单标识
        var op=location.search;
       if(op.toLowerCase().indexOf("hidden")>-1)
       {
        topMenuThisPage(2);//当前位置顶部菜单标识
       }
       else
       {
        topMenuThisPage(1);//当前位置顶部菜单标识
       }
        contentSubMenuThisPage();//当前位置左侧菜单标识
        mainMenuThisPage(3);//当前选项卡标识
  </script>
  </div>

</asp:Content>


