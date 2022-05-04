<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" ValidateRequest ="false"  CodeBehind="NoticeAdd.aspx.cs" Inherits="WangQi.ERP.Web.admin.NoticeAdd" Title="无标题页" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>

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
		<li><a href="NoticeAdd.aspx">添加公告</a></li><li><a href="NoticeList.aspx">公告列表</a></li><li><a href="NoticeEdit.aspx">编辑公告</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            添加公告</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"  class="mainContentLeftTd"  >
            公告标题:</td>
        <td bgcolor="#FFFFFF" class="mainContentRightTd" >
            <asp:TextBox ID="NoticeTitle" CssClass="adminput" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NoticeTitle"
                Display="Dynamic" ErrorMessage="公告标题必须填写"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            添加时间:</td>
        <td bgcolor="#FFFFFF">
            <asp:TextBox ID="AddTime" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AddTime"
                Display="Dynamic" ErrorMessage="添加时间必须填写"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="AddTime"
                ErrorMessage="时间格式错误" OnServerValidate="CustomValidator1_ServerValidate1"></asp:CustomValidator></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            公告内容:</td>
        <td bgcolor="#FFFFFF">&nbsp;
            </td>
      </tr>
      <tr>
        <td colspan="2" align="left"  bgcolor="#ffffff" >
            <div class="mainNoLeftTd">
               <FCKeditorV2:FCKeditor ID="NoticeContent" runat="server" Height="250px" Width="100%"></FCKeditorV2:FCKeditor>
            </div>
        </td>
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
                    <p id="MyFile"><input type="file"  size="50" name="File" onchange="Check_FileType(this.value)"/>
                         <input type="button" value="添加附件" onclick="addFile();" />
                         <input type="button" value="删除附件" onclick="del();" /></p>
                    </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px"></td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="Add" runat="server" Text="添加公告" CssClass="inputBt" OnClick="Add_Click"  /></td>
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
        topMenuThisPage(5);//当前位置顶部菜单标识
        leftMenuThisPage(1,1);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script>
</asp:Content>


