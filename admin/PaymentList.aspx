<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="PaymentList.aspx.cs" Inherits="WangQi.ERP.Web.admin.PaymentList" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <div class="leftMenuTitle">
		系统管理
	</div>
	<ul class="leftMenu">
	    <li><a href="NoticeList.aspx">公告管理</a></li>
		<li><a href="VoteAdd.aspx">投票管理</a></li>
		<li><a href="FriendLinkAdd.aspx">友情链接</a></li>
		<li><a href="searchCategory.aspx">搜索管理</a></li>
		<li><a href="OrderSet.aspx">订购配置</a></li>
		<li><a href="SysTemplet.aspx">系统模板</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
	<li><a href="OrderSet.aspx">订购配置</a></li></ul>
  </div>
   <div id="main">
    <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7" id="mainTopTable">
      <tr>
        <td  bgcolor="#FFFFFF" colspan="2" class="mainTitle">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 订购配置&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF">
            <asp:Button ID="DeliveryAddBt" runat="server" CssClass="inputBt6" Text="添加运送方式" OnClick="DeliveryAddBt_Click" CausesValidation="False" />
            <asp:Button ID="DeliveryListBt" runat="server" CssClass="inputBt6" Text="运送方式列表" OnClick="DeliveryListBt_Click" CausesValidation="False" />
        </td>
        <td bgcolor="#FFFFFF">
            <asp:Button ID="PaymentAddBt" runat="server" CssClass="inputBt6" Text="添加支付方式" OnClick="PaymentAddBt_Click" CausesValidation="False" />
            <asp:Button ID="PaymentListBt" runat="server" CssClass="inputBt6" Text="支付方式列表" OnClick="PaymentListBt_Click" CausesValidation="False" />
        </td>
      </tr>
    </table>
    <asp:GridView ID="gvPaymentList" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="PaymentList_PageIndexChanging" DataKeyNames="PaymentId" PageSize="11" OnRowDeleting="PaymentList_RowDeleting" CellPadding="0" CssClass="gv" Width="100%" EmptyDataText="暂无任何支付方式" >
        <Columns>
            <asp:BoundField DataField="PaymentId" HeaderText="ID" >
                <ControlStyle CssClass="gvOrderId" />
            </asp:BoundField>
            <asp:BoundField DataField="PaymentName" HeaderText="支付方式名称" ReadOnly="True" />
            <asp:TemplateField HeaderText="当前是否可用">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "PaymentIsShow").ToString()=="False"?"否":"是" %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "PaymentIsShow").ToString()=="False"?"否":"是" %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="PaymentId" DataNavigateUrlFormatString="PaymentEdit.aspx?paymentId={0}"
                HeaderText="修改支付" Text="修改支付" >
                <ItemStyle CssClass="gvBtAField" />
            </asp:HyperLinkField>
        </Columns>
        <RowStyle CssClass="gvRow" />
        <EditRowStyle CssClass="gvEditRow" />
        <PagerStyle CssClass="gvPage" />
        <HeaderStyle CssClass="gvHeader" />
        <AlternatingRowStyle CssClass="gvAlternatingRow" />
    </asp:GridView>
  </div>
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(5);//当前位置顶部菜单标识
        contentSubMenuThisPage();//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>


