<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true"  ValidateRequest ="false" CodeBehind="DeliveryAdd.aspx.cs" Inherits="WangQi.ERP.Web.admin.DeliveryAdd" Title="无标题页" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>

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
    
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            添加运送方式&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainContentLeftTd" >
            运送方式名称:</td>
        <td bgcolor="#FFFFFF"  class="mainContentRightTd" >
            <asp:TextBox ID="DeliveryName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DeliveryName"
                Display="Dynamic" ErrorMessage="运送方式名称必须填写"></asp:RequiredFieldValidator></td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" class="mainContentLeftTd">
                运送方式接口:</td>
            <td bgcolor="#ffffff" class="mainContentRightTd">
                <asp:DropDownList ID="ddlInterface" runat="server">
                    <asp:ListItem Selected="True" Value="0">请选择运送方式接口</asp:ListItem>
                    <asp:ListItem>EMS</asp:ListItem>
                    <asp:ListItem Value="POST">平邮</asp:ListItem>
                    <asp:ListItem Value="EXPRESS">其它快递公司</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            运送价格:</td>
        <td bgcolor="#FFFFFF">
            <asp:TextBox ID="DeliveryMoney" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DeliveryMoney"
                Display="Dynamic" ErrorMessage="运送价格必须填写"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="DeliveryMoney"
                Display="Dynamic" ErrorMessage="运送价格必须为数字" ValidationExpression="[0-9.]{0,30}"></asp:RegularExpressionValidator>
            </td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                付款方式:</td>
            <td bgcolor="#ffffff">
                <asp:DropDownList ID="ddlManner" runat="server">
                    <asp:ListItem Selected="True" Value="0">请选择付款方</asp:ListItem>
                    <asp:ListItem Value="SELLER_PAY">由卖家支付物流费用</asp:ListItem>
                    <asp:ListItem Value="BUYER_PAY">由买家支付物流费用</asp:ListItem>
                    <asp:ListItem Value="BUYER_PAY_AFTER_RECEIVE">买家收到货物后直接支付给物流公司</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" style="height: 20px">
                当前是否可用:</td>
            <td bgcolor="#ffffff" style="height: 20px">
                <asp:RadioButtonList ID="IsShow" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                    <asp:ListItem Value="0">否</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            运送方式介绍:</td>
        <td bgcolor="#FFFFFF">
            &nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" align="left"  bgcolor="#ffffff" >
            <div class="mainNoLeftTd">
                <FCKeditorV2:FCKeditor ID="DeliveryContent" runat="server" Height="450px" Width="100%"></FCKeditorV2:FCKeditor></div>
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px"></td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="Add" runat="server" Text="添加运送" CssClass="inputBt" OnClick="Add_Click"  /></td>
      </tr>
    </table>
  </div>
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(5);//当前位置顶部菜单标识
        contentSubMenuThisPage();//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>

