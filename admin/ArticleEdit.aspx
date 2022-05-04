<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" ValidateRequest ="false"CodeBehind="ArticleEdit.aspx.cs" Inherits="WangQi.ERP.Web.admin.ArticleEdit" Title="无标题页" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li>
		    <asp:HyperLink ID="ArticleLink" runat="server">添加文章</asp:HyperLink>
		</li>
		<li><a href="ArticleList.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">管理文章</a></li><li><a href="ArticleEdit.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">编辑文章</a></li><li><a href="ArticleClass.aspx<%=Request.Params["op"] == null ? "" : "?op=Hidden" %>">分类管理</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 编辑文章&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            文章ID:</td>
        <td bgcolor="#FFFFFF" >
            <asp:Label ID="ShowArticleId" runat="server" ForeColor="Red"></asp:Label>
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainContentLeftTd" >
            所属分类:
        </td>
        <td bgcolor="#FFFFFF" class="mainContentRightTd">
            <asp:DropDownList ID="ArticleClassIdList" runat="server" >
            </asp:DropDownList>
            →<a href="ArticleClass.aspx">分类管理</a> </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            文章标题:</td>
        <td bgcolor="#FFFFFF" >  
            <asp:TextBox ID="lbTitle" runat="server" CssClass="adminput"></asp:TextBox></td>
      </tr>

      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            文章内容:</td>
        <td bgcolor="#FFFFFF">
            &nbsp;
            <asp:HiddenField ID="nextpage" runat="server" /><asp:HiddenField ID="privorpage" runat="server" />
        </td>
      </tr>
      
      <tr>
        <td colspan="2" align="left"  bgcolor="#ffffff" >
            <div class="mainNoLeftTd">
                <FCKeditorV2:FCKeditor ID="ArticleContent" runat="server" Height="450px" Width="100%"></FCKeditorV2:FCKeditor>
                &nbsp;
            </div>
        </td>
      </tr>
            <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 21px" >
            文章简介:</td>
        <td bgcolor="#FFFFFF" style="height: 21px">
            <asp:TextBox ID="Intro" runat="server" Height="73px" TextMode="MultiLine" Width="99%"></asp:TextBox></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            添加关键字:</td>
        <td bgcolor="#FFFFFF">
            <asp:TextBox ID="tb_KeyWords" runat="server" CssClass="adminput"></asp:TextBox>
            关键字之间用","隔开</td>
      </tr>
            <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px" >
            文章编辑:</td>
        <td bgcolor="#FFFFFF" style="height: 20px">
            <asp:TextBox ID="Author" runat="server" MaxLength="25"></asp:TextBox></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            文章作者:</td>
        <td bgcolor="#FFFFFF">
            <asp:TextBox ID="txtAuthor" runat="server" MaxLength ="25" Width="358px"></asp:TextBox>
            </td>
      </tr>
       <tr>
        <td align="right" bgcolor="#FFFFFF" >
            文章来源:</td>
        <td bgcolor="#FFFFFF">
            <asp:TextBox ID="txtSource" runat="server" MaxLength ="25" Width="358px"></asp:TextBox>
            </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 21px" >
            添加时间:</td>
        <td bgcolor="#FFFFFF" style="height: 21px">
            
            <asp:TextBox ID="AddTime" runat="server" MaxLength="25" Enabled="False"></asp:TextBox></td>
      </tr>

      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            是否置顶:</td>
        <td bgcolor="#FFFFFF">
            <asp:RadioButtonList ID="rbl_IsTop" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">否</asp:ListItem>
                <asp:ListItem Value="1">是</asp:ListItem>
            </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            是否醒目:</td>
        <td bgcolor="#FFFFFF"><asp:RadioButtonList ID="rbl_IsNew" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">否</asp:ListItem>
                <asp:ListItem Value="1">是</asp:ListItem>
            </asp:RadioButtonList></td>
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
        <td align="right" bgcolor="#FFFFFF" style="height: 20px"><asp:Button ID="Previous" runat ="server" Visible ="false" Text="上一页" CssClass ="inputBt" OnClick ="Previous_Click" /> <asp:Button ID="Next" runat ="server" Visible ="false" Text ="下一页" CssClass ="inputBt" OnClick ="Next_Click" /></td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="Edit" runat="server" Text="保存" CssClass="inputBt" OnClick="Edit_Click"  />
            <asp:Button ID="Button2" runat="server" Text="插入页" CssClass="inputBt" OnClick="Insert_Click"  /><asp:Button ID="Button1" runat="server" Text="删除页" CssClass="inputBt" OnClick="Delete_Click"  /></td>
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
        contentSubMenuThisPage();//当前位置左侧菜单标识
        mainMenuThisPage(3);//当前选项卡标识
  </script>
</asp:Content>


