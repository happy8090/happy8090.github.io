<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true"  ValidateRequest ="false" CodeBehind="MessageEdit.aspx.cs" Inherits="WangQi.ERP.Web.admin.MessageEdit" Title="无标题页" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2"%>
<%@ Register TagPrefix="uc" TagName="ContentChannel" Src="~/admin/ContentChannel.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc:ContentChannel ID="ContentChannel" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>
		<li>
		    <asp:HyperLink ID="MessageLink" runat="server">频道配置</asp:HyperLink>
		</li>
		<li><a href="MessageList.aspx">留言列表</a></li><li><a href="MessageEdit.aspx">留言回复</a></li></ul>
  </div>
   <div id="main">
   <asp:Label id="Msg" runat="server" Text="" CssClass="msg" Visible="False"></asp:Label>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D7D7D7">
      <tr>
        <td colspan="2" bgcolor="#FFFFFF" class="mainTitle">
            "<asp:Label ID="MenuName" runat="server" ForeColor="Black"></asp:Label>" 回复留言&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" class="mainContentLeftTd" >
            反馈ID:</td>
        <td bgcolor="#FFFFFF"   class="mainContentRightTd"  >
            <asp:Label ID="ShowMessageId" runat="server" ForeColor="Red"></asp:Label>
        </td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                是否审核:</td>
            <td bgcolor="#ffffff">
                <asp:Label ID="IsAuditingLabe" runat="server"></asp:Label>[<asp:LinkButton ID="AuditingLinkButton"
                    runat="server" CausesValidation="False" OnClick="AuditingLinkButton_Click">审核</asp:LinkButton>,<asp:LinkButton
                        ID="NoAuditingLinkButton" runat="server" CausesValidation="False" OnClick="NoAuditingLinkButton_Click">取消审核</asp:LinkButton>]</td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ffffff">
                是否回复:</td>
            <td bgcolor="#ffffff">
                <asp:Label ID="IsAnswerLabe" runat="server"></asp:Label>&nbsp;
            </td>
        </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            留言标题:</td>
        <td bgcolor="#FFFFFF" >
            &nbsp;<asp:Label ID="MessageTitle" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr0">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName0" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field0" runat="server"></asp:Label>&nbsp;
            <asp:HiddenField ID="FieldNum" runat="server" />
            &nbsp;
        </td>
      </tr>
      <tr id="attributeTr1">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName1" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field1" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr2">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName2" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field2" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr3">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName3" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field3" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr4">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName4" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field4" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr5">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName5" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field5" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr6">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName6" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field6" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr7">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName7" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field7" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr8">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName8" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field8" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr9">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName9" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field9" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr10">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName10" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field10" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr11">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName11" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field11" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr12">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName12" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field12" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr13">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName13" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field13" runat="server"></asp:Label></td>
      </tr>
      <tr id="attributeTr14">
        <td align="right" bgcolor="#FFFFFF" >
            <asp:Label ID="FieldName14" runat="server"></asp:Label>:</td>
        <td bgcolor="#FFFFFF">&nbsp;<asp:Label ID="Field14" runat="server"></asp:Label></td>
      </tr>
        <tr>
            <td align="right" bgcolor="#ffffff" style="height: 20px">
                提交者:</td>
            <td bgcolor="#ffffff" style="height: 20px">
                <asp:HyperLink ID="MemberHyperLink" runat="server" Target="_blank">HyperLink</asp:HyperLink></td>
        </tr>
      
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px" >
            提交IP:</td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Label ID="AddIp" runat="server"></asp:Label></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            提交时间:</td>
        <td bgcolor="#FFFFFF">
            &nbsp;<asp:Label ID="AddTime" runat="server"></asp:Label></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            留言内容</td>
        <td bgcolor="#FFFFFF">
            &nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" align="left"  bgcolor="#ffffff" >
            <div class="mainNoLeftTd">
                <FCKeditorV2:FCKeditor ID="MessageContent" runat="server" Height="450px" Width="100%"></FCKeditorV2:FCKeditor>
            </div>
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" >
            留言回复</td>
        <td bgcolor="#FFFFFF">
            &nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" align="left"  bgcolor="#ffffff" >
            <div class="mainNoLeftTd">
                <FCKeditorV2:FCKeditor ID="Answer" runat="server" Height="450px" Width="100%"></FCKeditorV2:FCKeditor>
            </div>
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF" style="height: 20px"></td>
        <td bgcolor="#FFFFFF" style="height: 20px">&nbsp;<asp:Button ID="Edit" runat="server" Text="回复" CssClass="inputBt" OnClick="Edit_Click"  /></td>
      </tr>
    </table>
  </div>
    <script language="JavaScript" type="text/javascript" >
        fieldTrLabelShow();//初始化自定义属性显示
        topMenuThisPage(2);//当前位置顶部菜单标识
        contentSubMenuThisPage();//当前位置左侧菜单标识
        mainMenuThisPage(3);//当前选项卡标识
  </script>
</asp:Content>


