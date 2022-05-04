<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" ValidateRequest ="false"  CodeBehind="ProductEdit.aspx.cs" Inherits="WangQi.ERP.Web.admin.ProductEdit" Title="无标题页" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li>
		    <asp:HyperLink ID="ProductLink" runat="server">频道配置</asp:HyperLink>
		</li>
		<li><a href="ProductAdd.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">添加产品</a></li><li><a href="ProductList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">产品列表</a></li><li><a href="ProductEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">产品编辑</a></li><li><a href="ProductClass.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">分类管理</a></li><li><a href="OrderList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">订单管理</a></li><li><a href="OrderDisposal.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">订单操作</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 编辑产品&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            产品ID:</td>
        <td bgcolor="#FFFFFF" >
            <asp:Label ID="ShowProductId" runat="server" ForeColor="Red"></asp:Label>
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainContentLeftTd" >
            所属分类:
        </td>
        <td bgcolor="#FFFFFF" class="mainContentRightTd">
            <asp:DropDownList ID="ProductClassIdList" runat="server">
            </asp:DropDownList>
            →<a href="ProductClass.aspx">分类管理</a> </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            产品名称:</td>
        <td bgcolor="#FFFFFF" >
            <asp:TextBox ID="ProductName" runat="server" CssClass="adminput"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ProductName"
                Display="Dynamic" ErrorMessage="产品名称必须填写"></asp:RequiredFieldValidator></td>
      </tr>

      
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px" >
            产品小图:</td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:FileUpload ID="PicSmall" runat="server" />&nbsp;
            <asp:CustomValidator ID="PicSmallCustomValidator" runat="server" ControlToValidate="PicSmall"
                Display="Dynamic" ErrorMessage="小图文件格式错误" OnServerValidate="PicSmallCustomValidator_ServerValidate"></asp:CustomValidator>
            <asp:HyperLink ID="PicSmallHyperLink" runat="server" Target="_blank">原图</asp:HyperLink><span class="explain">&nbsp;
            不修改请留空</span> 引用路径：<asp:TextBox ID="TB_UrlSmall" runat="server"></asp:TextBox></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            产品大图:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:FileUpload ID="PicBig" runat="server" />&nbsp;
            <asp:CustomValidator ID="PicBigCustomValidator" runat="server" ControlToValidate="PicBig"
                Display="Dynamic" ErrorMessage="大图文件格式错误" OnServerValidate="PicBigCustomValidator_ServerValidate"></asp:CustomValidator>
            <asp:HyperLink ID="PicBigHyperLink" runat="server" Target="_blank">原图</asp:HyperLink><span class="explain">&nbsp;
            不修改请留空</span>        引用路径：<asp:TextBox ID="TB_UrlBig" runat="server"></asp:TextBox></td>
      </tr>


      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            产品简介:</td>
        <td bgcolor="#FFFFFF">&nbsp;
            </td>
      </tr>
      <tr>
        <td colspan="2" align="left"  bgcolor="#ffffff" >
            <div class="mainNoLeftTd">
                <FCKeditorV2:FCKeditor ID="ProductContent" runat="server" Height="450px" Width="100%"></FCKeditorV2:FCKeditor>
            </div>
        </td>
      </tr>
      
            <tr>
        <td align="right" bgcolor="#FFFFFF" >
            产品简介摘要:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="ProductShortContent" runat="server" Width="99%" Height="73px" TextMode="MultiLine"></asp:TextBox></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            添加关键字:</td>
        <td bgcolor="#FFFFFF">
            <asp:TextBox ID="tb_KeyWords" runat="server" MaxLength ="25" CssClass="adminput"></asp:TextBox>
            关键字之间用","隔开</td>
      </tr>
            <tr>
        <td align="right" bgcolor="#FFFFFF" >
            添加时间:</td>
        <td bgcolor="#FFFFFF">
            <asp:TextBox ID="AddTime" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AddTime"
                Display="Dynamic" ErrorMessage="添加时间必须填写"></asp:RequiredFieldValidator>&nbsp;
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="AddTime"
                Display="Dynamic" ErrorMessage="时间格式错误！" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        </td>
      </tr>
            <tr>
        <td align="right" bgcolor="#FFFFFF"  >
            产品编号/型号:</td>
        <td bgcolor="#FFFFFF" >
            <asp:TextBox ID="ProductNumber" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ProductNumber"
                Display="Dynamic" ErrorMessage="产品编号/型号必须填写"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"  >
            产品价格:</td>
        <td bgcolor="#FFFFFF" >
            <asp:TextBox ID="Price" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="price"
                Display="Dynamic" ErrorMessage="产品价格必须填写"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="price"
                Display="Dynamic" ErrorMessage="价格必须为数字" ValidationExpression="[\d.]+"></asp:RegularExpressionValidator></td>
      </tr>
      <tr id="attributeTr0">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName0" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute0" runat="server"></asp:TextBox>
            <asp:HiddenField ID="AttributeNum" runat="server" />
            <asp:CustomValidator ID="AttributeValidator" runat="server" OnServerValidate="AttributeValidator_ServerValidate"></asp:CustomValidator>
        </td>
      </tr>
      <tr id="attributeTr1">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName1" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute1" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr2">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName2" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute2" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr3">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName3" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute3" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr4">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName4" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute4" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr5">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName5" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute5" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr6">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName6" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute6" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr7">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName7" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute7" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr8">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName8" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute8" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr9">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName9" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute9" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr10">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName10" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute10" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr11">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName11" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute11" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr12">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName12" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute12" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr13">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName13" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute13" runat="server"></asp:TextBox></td>
      </tr>
      <tr id="attributeTr14">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="AttributeName14" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="Attribute14" runat="server"></asp:TextBox></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px" >
            <span style="color: #ff0000">上传要求</span>:</td>
        <td bgcolor="#FFFFFF" style="height: 20px">
        <p id="P1">
            &nbsp; 上传文件名<span style="color: #ff0033">不能为中文</span>，否则不能下载！尽量用英文！</p>
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            文件:</td>
        <td bgcolor="#FFFFFF">
        <p id="MyFile"><input type="file"  size="50" name="File" onchange="Check_FileType(this.value)"/>&nbsp;
                         <input type="button" value="添加附件" onclick="addFile();" />
                         <input type="button" value="删除附件" onclick="del();" />
            
        </p><asp:HiddenField ID="HiddenField1" runat="server" />
        </td>
      </tr>
      
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            上传附件:</td>
        <td bgcolor="#FFFFFF">
            <asp:Literal ID="Lit" runat="server" Text="无上传附件"></asp:Literal><asp:Button ID="btn_Delete"
                runat="server" Enabled="False" Text="删除上传附件" OnClick="btn_Delete_Click" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            是否评论:</td>
        <td bgcolor="#FFFFFF"><asp:RadioButtonList ID="rblIsReply" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                <asp:ListItem Value="1">否</asp:ListItem>
            </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px"></td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="Edit" runat="server" Text="编辑产品" CssClass="inputBt" OnClick="Edit_Click"  /></td>
      </tr>
    </table>
  </div>
    <script type="text/javascript">
    var FileID=0;
    function addFile()                            //继续添加附件
    {
        FileID=FileID+1;
        var str = '<input style="display:block" id="fileid'+FileID+'" type="file" size="50" name="File" onchange="Check_FileType(this.value)"/>';
        document.getElementById('MyFile').insertAdjacentHTML("beforeEnd",str);
    }
    function del()
    {
       //alert(FileID);
       if(FileID>0)
       {
           document.getElementById('MyFile').removeChild(document.getElementById("fileid"+FileID));
           FileID=FileID-1;
       }
       
    }
    function Check_FileType(str)              //检查文件类型
    {
        var pos = str.lastIndexOf(".");
        var lastname = str.substring(pos,str.length); 
        if (lastname.toLowerCase()!=".xls"&&lastname.toLowerCase()!=".doc"&&lastname.toLowerCase()!=".txt"&&lastname.toLowerCase()!=".docx")
        {
            alert("文件必须为.txt,.doc..docx,.xls类型");
            return false;
        }
        else 
       {
            return true;
       }
    } 
    </script>
    <script language="JavaScript" type="text/javascript" >
        attributeTrLabelShow();//初始化自定义属性显示
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
        contentSubMenuThisPage();//当前位置左侧菜单标识
        mainMenuThisPage(4);//当前选项卡标识
  </script>
</asp:Content>


