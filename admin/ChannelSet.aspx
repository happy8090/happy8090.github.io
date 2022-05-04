<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="ChannelSet.aspx.cs" Inherits="WangQi.ERP.Web.admin.ChannelSet" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
  	<div class="leftMenuTitle">
		基本设置
	</div>
	<ul class="leftMenu">
		<li><a href="LoginInfo.aspx">登陆信息</a></li>
		<li><a href="WebInfo.aspx">网站信息</a></li>
		<li><a href="ChannelSet.aspx">频道设置</a></li>
		<li><a href="SiteMenuList.aspx">频道ID</a></li>
		<li><a href="Acredit.aspx">授权信息</a></li>
		<%--<li><a href="OrderSet.aspx">订购配置</a></li>
		<li><a href="SysTemplet.aspx">系统模板</a></li>--%>
	</ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li><strong><a href="ChannelSet.aspx">频道管理</a></strong></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            新闻信息页&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainLeftTd">
           显示行数:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="ArticlePageSize" runat="server" Width="26px">10</asp:TextBox>&nbsp;
            行<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ArticlePageSize"
                Display="Dynamic" ErrorMessage="行数不能为空"></asp:RequiredFieldValidator>
            </td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" class="mainLeftTd">
                标题长度</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="ArticleTitleLenth" runat="server"></asp:TextBox>双字节<asp:RequiredFieldValidator
                    ID="RequiredFieldValidator21" runat="server" ControlToValidate="ProductListTitleLength"
                    Display="Dynamic" ErrorMessage="值不能为空"></asp:RequiredFieldValidator></td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            时间格式:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="ArticleDateTimeFormat" runat="server">yyyy/MM/dd</asp:TextBox><span class="explain">&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ArticleDateTimeFormat"
                Display="Dynamic" ErrorMessage="时间格式化字符串必须填写"></asp:RequiredFieldValidator></span></td>
      </tr>
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            图文展示页&nbsp;</td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                显示行数:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="PicRowNum" runat="server" Width="26px">5</asp:TextBox>&nbsp; 行<asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="PicRowNum" Display="Dynamic"
                    ErrorMessage="行数不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                显示数列:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="PicColumnsNum" runat="server" Width="26px">3</asp:TextBox>&nbsp;
                列<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PicColumnsNum"
                    Display="Dynamic" ErrorMessage="列数不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                图片宽:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="PicListWidth" runat="server" Width="26px">100</asp:TextBox>
                px<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PicListWidth"
                    Display="Dynamic" ErrorMessage="值不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                图片高:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="PicListHeight" runat="server" Width="26px">100</asp:TextBox>
                px</td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                图文标题长:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="PicListTitleLength" runat="server" Width="26px">10</asp:TextBox>
                双字节<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PicListTitleLength"
                    Display="Dynamic" ErrorMessage="值不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                图文摘要长:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="PicListShortContentLength" runat="server" Width="26px">30</asp:TextBox>
                双字节<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="PicListShortContentLength"
                    Display="Dynamic" ErrorMessage="值不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                详情页图片宽:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="PicDetailWidth" runat="server" Width="26px">100</asp:TextBox>
                px<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="PicDetailWidth"
                    Display="Dynamic" ErrorMessage="值不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                详情页图片高:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="PicDetailHeight" runat="server" Width="26px">100</asp:TextBox>
                px</td>
        </tr>
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            在线订购页&nbsp;</td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                价格单位:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="MoneyUnit" runat="server" Width="26px">￥</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="MoneyUnit"
                    Display="Dynamic" ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                显示行数:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="ProductRowNum" runat="server" Width="26px">5</asp:TextBox>&nbsp; 行<asp:RequiredFieldValidator
                    ID="RequiredFieldValidator11" runat="server" ControlToValidate="ProductRowNum" Display="Dynamic"
                    ErrorMessage="行数不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                显示列数:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="ProductColumnsNum" runat="server" Width="26px">3</asp:TextBox>&nbsp;
                列<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ProductColumnsNum"
                    Display="Dynamic" ErrorMessage="列数不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                图片宽:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="ProductListWidth" runat="server" Width="26px">100</asp:TextBox>
                px<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ProductListWidth"
                    Display="Dynamic" ErrorMessage="值不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                图片高:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="ProductListHeight" runat="server" Width="26px">100</asp:TextBox>
                px</td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                产品名称长:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="ProductListTitleLength" runat="server" Width="26px">10</asp:TextBox>
                双字节<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ProductListTitleLength"
                    Display="Dynamic" ErrorMessage="值不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                产品摘要长:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="ProductListShortContentLength" runat="server" Width="26px">30</asp:TextBox>
                双字节<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="ProductListShortContentLength"
                    Display="Dynamic" ErrorMessage="值不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                详情页图片宽:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="ProductDetailWidth" runat="server" Width="26px">100</asp:TextBox>
                px<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="ProductDetailWidth"
                    Display="Dynamic" ErrorMessage="值不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                详情页图片高:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="ProductDetailHeight" runat="server" Width="26px">100</asp:TextBox>
                px</td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" style="height: 19px">
                是否显示购买按钮:</td>
            <td bgcolor="#ffffff">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="true">是</asp:ListItem>
                    <asp:ListItem Value="false">否</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                是否显示产品价格:</td>
            <td bgcolor="#ffffff">
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="true">是</asp:ListItem>
                    <asp:ListItem Value="false">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            客户反馈页&nbsp;</td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                显示行数:</td>
            <td bgcolor="#ffffff">
                <asp:TextBox ID="MessageRowNum" runat="server" Width="26px">10</asp:TextBox>&nbsp;行
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="MessageRowNum"
                    Display="Dynamic" ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"></td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Button ID="Save" runat="server" Text="保存信息" CssClass="inputBt" OnClick="Save_Click" /></td>
      </tr>
    </table>
  </div>
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(4);//当前位置顶部菜单标识
        leftMenuThisPage(1,3);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>


