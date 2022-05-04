<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="ChannelList.aspx.cs" Inherits="WangQi.ERP.Web.admin.ChannelList" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li><a href="ChannelList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">频道列表</a></li><li><a href="ChannelEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">编辑频道</a></li><li><a href="ChannelAdd.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">添加频道</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <asp:GridView ID="gvMenuList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="MenuList_PageIndexChanging" DataKeyNames="MenuId"  PageSize="11"  CellPadding="0" CssClass="gv" Width="100%" OnRowUpdating="MenuList_RowUpdating" OnRowDataBound="MenuList_RowDataBound" EmptyDataText="<span class='msg'>暂无任何频道</span>" OnSelectedIndexChanged="gvMenuList_SelectedIndexChanged" >
        <Columns>
            <asp:TemplateField HeaderText="排序号">
                <EditItemTemplate>
                    <asp:TextBox ID="tborder" runat="server" Text='<%# Bind("OrderId") %>' Width ="15" ></asp:TextBox>
                </EditItemTemplate>
                <ControlStyle CssClass="gvOrderId" />
                <ItemTemplate>
                    <asp:TextBox ID="tborder" runat="server" Text='<%# Bind("OrderId") %>' Width="15"></asp:TextBox>
                   <asp:Button ID="UpdateBt" runat="server" CausesValidation="True" CommandName="Update"
                        Text="修改" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="MenuName" HeaderText="频道名称" />
            <asp:TemplateField HeaderText="频道标识">
                <EditItemTemplate>
                    <asp:TextBox ID="FileName" runat="server" Text='<%# Bind("FileName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileName"
                        Display="Dynamic" ErrorMessage="必须填写"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileName"
                        Display="Dynamic" ErrorMessage="频道标识必须为小写字母或下划线组成" ValidationExpression="[a-z_]{0,50}"></asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="FileName"
                        Display="Dynamic" ErrorMessage="已存在此标识" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("FileName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="频道位置">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# WangQi.ERP.WebsiteData.MenuProvider.GetLocation(Eval("Location").ToString()) %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#WangQi.ERP.WebsiteData. MenuProvider.GetLocation(Eval("Location").ToString()) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="频道类型">
                <EditItemTemplate>
                    <asp:HiddenField ID="AttributerHiddenField" runat="server" Value='<%# Eval("Attributer") %>' />
                    <asp:Label ID="Label2" runat="server" Text='<%#WangQi.ERP.WebsiteData. MenuProvider.GetAttributer(Eval("Attributer").ToString()) %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%#WangQi.ERP.WebsiteData. MenuProvider.GetAttributer(Eval("Attributer").ToString()) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="Show" HeaderText="是否显示" >
                <ControlStyle CssClass="checkBox" />
            </asp:CheckBoxField>
            <asp:TemplateField HeaderText="打开方式">
                <EditItemTemplate>
                    <asp:HiddenField ID="TargetHiddenField" runat="server" Value='<%# Eval("Target") %>' />
                    <asp:DropDownList ID="TargetList" runat="server">
                    </asp:DropDownList>&nbsp;
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%#WangQi.ERP.WebsiteData. MenuProvider.GetTarget(Eval("Target").ToString()) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="href" HeaderText="链接地址" NullDisplayText="无" />
             <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                    <%--<asp:HyperLink ID="HyperLink1" runat="server" Text="编辑" NavigateUrl ='<%# Eval("MenuId","ChannelEdit.aspx?Id={0}") %>'></asp:HyperLink>--%>
                    <a href='ChannelEdit.aspx?Id=<%# Eval("MenuId") %><%# Request.Params["op"] == null ? "" : "&op=Hidden" %>'>编辑</a>
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
    </asp:GridView>
  <br />

    <asp:Button ID="btnAll" runat="server" Text="全选" OnClick="btnAll_Click" />
    <asp:Button ID="btnReverse" runat="server" Text="反选" OnClick="btnReverse_Click" />
    <asp:Button ID="btnCancell" runat="server" Text="取消" OnClick="btnCancell_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="btnDelete_Click" />
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
        //topMenuThisPage(2);//当前位置顶部菜单标识
        leftMenuThisPage(1,1);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script></div>

</asp:Content>


