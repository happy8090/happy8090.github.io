<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" ValidateRequest ="false"  CodeBehind="Pic.aspx.cs" Inherits="WangQi.ERP.Web.admin.Pic" Title="无标题页" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li><a href="#">添加图文</a></li><li><a href="PicList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">图文列表</a></li><li><a href="PicEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">图文编辑</a></li><li><a href="PicClass.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">分类管理</a></li></ul>
  </div>
  <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 添加图文</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainContentLeftTd" >
            所属分类:        </td>
        <td bgcolor="#FFFFFF" class="mainContentRightTd">
            <asp:DropDownList ID="PicClassIdList" runat="server">            </asp:DropDownList>
            →<a href="PicClass.aspx">分类管理</a> </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            图文标题:</td>
        <td bgcolor="#FFFFFF" >
            <asp:TextBox ID="PicTitle" CssClass="adminput" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PicTitle"
                Display="Dynamic" ErrorMessage="文章标题必须填写"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px" >小图:</td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:FileUpload ID="PicSmall" runat="server" />
            <asp:CustomValidator ID="PicSmallCustomValidator" runat="server" ControlToValidate="PicSmall"
                Display="Dynamic" ErrorMessage="小图文件格式错误" OnServerValidate="PicSmallCustomValidator_ServerValidate"></asp:CustomValidator>
            引用路径：<asp:TextBox ID="TB_UrlSmall" runat="server"></asp:TextBox></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >大图:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:FileUpload ID="PicBig" runat="server" />
            <asp:CustomValidator ID="PicBigCustomValidator" runat="server" ControlToValidate="PicBig"
                Display="Dynamic" ErrorMessage="大图文件格式错误" OnServerValidate="PicBigCustomValidator_ServerValidate"></asp:CustomValidator>
            引用路径：<asp:TextBox ID="TB_UrlBig" runat="server"></asp:TextBox></td>
      </tr>


      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            图文内容:</td>
        <td bgcolor="#FFFFFF">&nbsp;            </td>
      </tr>
      <tr>
        <td colspan="2" align="left"  bgcolor="#ffffff" >
            <div class="mainNoLeftTd">
                <FCKeditorV2:FCKeditor ID="PicContent" runat="server" Height="450px" Width="100%"></FCKeditorV2:FCKeditor>
            </div>        </td>
      </tr>
            <tr>
        <td align="right" bgcolor="#FFFFFF" >图文简介:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:TextBox ID="PicShortContent" runat="server" Width="99%" Height="73px" TextMode="MultiLine"></asp:TextBox></td>
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
                Display="Dynamic" ErrorMessage="时间格式错误！" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>        </td>
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
        <td bgcolor="#FFFFFF"> <p id="MyFile"><input type="file"  size="50" name="File" onchange="Check_FileType(this.value)"/>
                         <input type="button" value="添加附件" onclick="addFile();" />
                         <input type="button" value="删除附件" onclick="del();" /></p></td>
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
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="Add" runat="server" Text="添加图文" CssClass="inputBt" OnClick="Add_Click"  /></td>
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


