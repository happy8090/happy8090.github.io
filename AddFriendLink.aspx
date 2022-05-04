<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="AddFriendLink.aspx.cs" Inherits="WangQi.ERP.Web.AddFriendLink" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Side" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" EnableViewState="False"></asp:Literal>
    </div>
    <div class="mframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt">
            <asp:Literal ID="PageMainContentTitle" runat="server" EnableViewState="False"></asp:Literal>
            </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm f14">
                    <asp:Label id="Msg" runat="server" Text="" Visible="False"></asp:Label>
                    
                    <table width="100%" border="0" cellpadding="0" cellspacing="10">
                        <tr id="typeTr">
                            <td align="right" width="20%"><asp:Label ID ="lbType" meta:resourcekey="lbType" runat="server" Text =""></asp:Label></td>
                            <td><asp:RadioButtonList ID="TypeList" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Selected="True" meta:resourcekey="ListItem1" Text ="" Value="false"></asp:ListItem>
                                    <asp:ListItem Value="true" meta:resourcekey="ListItem2" Text =""></asp:ListItem>
                                </asp:RadioButtonList></td>
                        </tr>
                        <tr>
                            <td align="right"><asp:Label ID ="lbAddr" meta:resourcekey="lbAddr" runat ="server" Text=""></asp:Label></td>
                            <td><asp:TextBox ID="Url" runat="server" CssClass="inputbg" Width="300px">http://</asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Url" Display="Dynamic" meta:resourcekey="RequiredFieldValidator2" ErrorMessage=""></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Url"
                    Display="Dynamic" meta:resourcekey="RegularExpressionValidator1" ErrorMessage="" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr id="tr1">
                            <td align="right"><asp:Label ID ="lbWebName" meta:resourcekey="lbWebName" runat ="server" Text ="" ></asp:Label></td>
                            <td><asp:TextBox ID="FriendLinkTitle" runat="server" CssClass="inputbg" Width="300px"></asp:TextBox>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" meta:resourcekey="CustomValidator1" ErrorMessage=""
                OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator></td>
                        </tr>
                        <tr id="tr2" class="hide">
                            <td align="right"><asp:Label ID ="lbPic" meta:resourcekey="lbPic" runat="server" Text=""></asp:Label></td>
                            <td><asp:FileUpload ID="Logo" runat="server" />
                                <asp:CustomValidator ID="LogoCustomValidator" runat="server"
                    Display="Dynamic" meta:resourcekey="LogoCustomValidator" ErrorMessage="" OnServerValidate="LogoCustomValidator_ServerValidate"></asp:CustomValidator></td>
                        </tr>
                        <tr>
                            <td align="right" valign="top"><asp:Label ID ="lbScript" meta:resourcekey="lbScript" runat ="server" Text=""></asp:Label></td>
                            <td><asp:TextBox ID="friendLinkDescribe" runat="server" Rows="3"  CssClass="inputbg" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="right"></td>
                            <td>
                                <asp:Button ID="Add" meta:resourcekey="Add" runat="server" Text="" CssClass="btn" OnClick="Add_Click"  /></td>
                        </tr>
                    </table>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
    <script language="JavaScript" type="text/javascript" src="/admin/Js/Global.js"></script>
    <script language="JavaScript" type="text/javascript" >      
        radioFriendLinkLoad()//初始化显示
  </script>
</asp:Content>
