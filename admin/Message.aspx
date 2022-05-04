<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="WangQi.ERP.Web.admin.Message" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
<div id="mainMenu">
  	<ul>
		<li><a href="#">频道配置</a></li><li><a href="MessageList.aspx">留言列表</a></li><li><a href="MessageEdit.aspx">留言回复</a></li></ul>
  </div>
  <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 频道配置&nbsp;</td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" class="mainLeftTd">
                前台显示:</td>
            <td bgcolor="#ffffff">
                <asp:DropDownList ID="Secrecy" runat="server">
                    <asp:ListItem Value="0">全部显示</asp:ListItem>
                    <asp:ListItem Value="1">审核后显示</asp:ListItem>
                    <asp:ListItem Value="2">不显示</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainLeftTd">自定字段数目:</td>
        <td bgcolor="#FFFFFF" id="trNum">&nbsp;<asp:DropDownList ID="FieldNum" runat="server" >
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
            </asp:DropDownList>条<asp:HiddenField ID="MessageConfigId" runat="server" />
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="请完整填写所有自定义字段的名称"
                OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        </td>
      </tr>
      <tr id="attributeTr0">
        <td align="right" bgcolor="#FFFFFF" >
            字段1:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field0" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required0" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression0" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg0" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr1">
        <td align="right" bgcolor="#FFFFFF" >
            字段2:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field1" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required1" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression1" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg1" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr2">
        <td align="right" bgcolor="#FFFFFF" >字段3:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field2" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required2" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression2" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg2" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr3">
        <td align="right" bgcolor="#FFFFFF" >字段4:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field3" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required3" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression3" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg3" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr4">
        <td align="right" bgcolor="#FFFFFF" >字段5:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field4" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required4" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression4" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg4" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr5">
        <td align="right" bgcolor="#FFFFFF" >字段6:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field5" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required5" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression5" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg5" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr6">
        <td align="right" bgcolor="#FFFFFF" >字段7:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field6" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required6" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression6" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg6" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr7">
        <td align="right" bgcolor="#FFFFFF" >字段8:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field7" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required7" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression7" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg7" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr8">
        <td align="right" bgcolor="#FFFFFF" >字段9:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field8" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required8" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression8" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg8" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr9">
        <td align="right" bgcolor="#FFFFFF" >字段10:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field9" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required9" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression9" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg9" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr10">
        <td align="right" bgcolor="#FFFFFF" >字段11:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field10" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required10" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression10" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg10" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr11">
        <td align="right" bgcolor="#FFFFFF" >字段12:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field11" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required11" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression11" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg11" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr12">
        <td align="right" bgcolor="#FFFFFF" >字段13:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field12" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required12" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression12" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg12" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr13">
        <td align="right" bgcolor="#FFFFFF" >字段14:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field13" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required13" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression13" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg13" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr14">
        <td align="right" bgcolor="#FFFFFF" >字段15:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Field14" runat="server"></asp:TextBox>
            <asp:CheckBox ID="Required14" runat="server" Text="必填" CssClass="checkBox" />
            &nbsp; 验证正则:<asp:TextBox ID="RegularExpression14" runat="server" CssClass="regularExpression"></asp:TextBox>
            正则验证失败提示：<asp:TextBox ID="RegularExpressionMsg14" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="Tr1">
        <td align="right" bgcolor="#FFFFFF" >是否允许匿名访问
            :</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:RadioButtonList ID="rblIsVisitor" runat="server" RepeatDirection="Horizontal"
                RepeatLayout="Flow">
                <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                <asp:ListItem Value="1">否</asp:ListItem>
            </asp:RadioButtonList></td>
      </tr>
       <tr>
        <td align="right" bgcolor="#FFFFFF"></td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Button ID="Save" runat="server" Text="保存配置" CssClass="inputBt" OnClick="Save_Click" /></td>
      </tr>
     </table> <br />
 <script type="text/javascript">
  function IndexChange(str)
  {
    var obj=document.getElementById("tbbox");
    obj.value=str;
  }
  </script>
       参考正则:
       <asp:DropDownList ID="ddlExpresstion" runat="server">
               <asp:ListItem Selected="True" Value ="0">请选择</asp:ListItem>
               <asp:ListItem Value="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?">个人主页</asp:ListItem>
               <asp:ListItem Value="(\d{3,4}\)|\d{3,4}-|\s)?\d{7,14}">电话</asp:ListItem>
               <asp:ListItem Value="\d{6}">邮编</asp:ListItem>
               <asp:ListItem Value="\d{17}[\d|X]|\d{15}">身份证号</asp:ListItem>
          </asp:DropDownList>
          <textarea id="tbbox" cols="40" rows="8" name="tbbox"></textarea>
           <script language="JavaScript" type="text/javascript" >
        attributeTrLoad();//初始化字段数目
        topMenuThisPage(1);//当前位置顶部菜单标识
        contentMenuThisPage();//显示当前页在左侧菜单位置
        mainMenuThisPage(1);//当前选项卡标识
  </script>
  </div>

</asp:Content>



