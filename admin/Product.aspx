<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WangQi.ERP.Web.admin.Product" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li><a href="#">频道配置</a></li><li><a href="ProductAdd.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">添加产品</a></li><li><a href="ProductList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">产品列表</a></li><li><a href="ProductEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">产品编辑</a></li><li><a href="ProductClass.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">分类管理</a></li><li><a href="OrderList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">订单管理</a></li><li><a href="OrderDisposal.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">订单操作</a></li></ul>
  </div>
  <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 产品属性设置&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainLeftTd">属性条数:</td>
        <td bgcolor="#FFFFFF" id="trNum">&nbsp;<asp:DropDownList ID="AttributeNum" runat="server" >
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
            </asp:DropDownList>条<asp:HiddenField ID="ProductConfigId" runat="server" />
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="请完整填写所有属性的名称"
                OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        </td>
      </tr>
      <tr id="attributeTr0">
        <td align="right" bgcolor="#FFFFFF" >属性1:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute0" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr1">
        <td align="right" bgcolor="#FFFFFF" >属性2:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute1" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr2">
        <td align="right" bgcolor="#FFFFFF" >属性3:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute2" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr3">
        <td align="right" bgcolor="#FFFFFF" >属性4:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute3" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr4">
        <td align="right" bgcolor="#FFFFFF" >属性5:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute4" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr5">
        <td align="right" bgcolor="#FFFFFF" >属性6:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute5" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr6">
        <td align="right" bgcolor="#FFFFFF" >属性7:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute6" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr7">
        <td align="right" bgcolor="#FFFFFF" >属性8:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute7" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr8">
        <td align="right" bgcolor="#FFFFFF" >属性9:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute8" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr9">
        <td align="right" bgcolor="#FFFFFF" >属性10:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute9" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr10">
        <td align="right" bgcolor="#FFFFFF" >属性11:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute10" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr11">
        <td align="right" bgcolor="#FFFFFF" >属性12:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute11" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr12">
        <td align="right" bgcolor="#FFFFFF" >属性13:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute12" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr13">
        <td align="right" bgcolor="#FFFFFF" >属性14:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute13" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr14">
        <td align="right" bgcolor="#FFFFFF" >属性15:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute14" runat="server"></asp:TextBox></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"></td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Button ID="Save" runat="server" Text="保存设置" CssClass="inputBt" OnClick="Save_Click" /></td>
      </tr>
    </table>
  </div>
  <script language="JavaScript" type="text/javascript" >
        attributeTrLoad();//初始化自定义属性数目
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
        contentMenuThisPage();//显示当前页在左侧菜单位置
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>



