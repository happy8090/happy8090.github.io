<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="PicDetail.aspx.cs" Inherits="WangQi.ERP.Web.PicDetail" Title="无标题页" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>
<%@ Register Src="~/Controls/ReplyControl.ascx" TagPrefix="UC" TagName="ReplyControl" %>

<asp:Content ID="SideContent" ContentPlaceHolderID="Side" Runat="Server">
    <div class="panel" id="ClassList" runat="server">
        <script type="text/javascript" src="js/dwnTree.js"></script>
        <div id="dwnTree" class="dwnTree"></div>
        <script type="text/javascript">
   //<![CDATA[ 
   new dwnTree('js/dwnTree.xml','dwnTree',{name:'dwnTree2Cookie'});
   //]]>
  </script>
    </div>
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" EnableViewState="False"></asp:Literal>
    </div>
    <asp:Panel ID="NoLoginPanel" runat="server" Visible="false" EnableViewState="False">
        <asp:Label ID="PlealseLogin" runat="server" CssClass="plealseLogin" Text="" ></asp:Label>
        <UC:MemberLogin ID="MemberLogin1" runat="server" EnableViewState="false" />
        <asp:HiddenField ID ="hidden" runat ="server" Value="" />
        </asp:Panel>
    <asp:Panel ID="LoginPanel" runat="server" EnableViewState="False">
        <div class="mframe">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="tm"> <span class="tt">
                <asp:Literal ID="Literal1" runat="server" Text="<%$ Resources:WebResourcesGlobal, PicDetail %>"></asp:Literal>
                </span></div>
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm">
                    <div class="articleT">
                        <asp:Label ID="PicTitle" runat="server" EnableViewState="False"></asp:Label>
                    </div>
                    <table class="articleInfo" width="100%">
                        <tr>
                            <td align="left"><asp:Label ID="Author" runat="server" Text="" EnableViewState="False"></asp:Label></td>
                            <td align="right"><asp:Label ID="AddTime" runat="server" Text="" EnableViewState="False"></asp:Label></td>
                        </tr>
                    </table>
                    <asp:Image ID="BigImage" EnableViewState="False"  runat="server" />
                    <br />
                    <div id="content">
                        <asp:Literal ID="PicContent" runat="server" EnableViewState="False"></asp:Literal>
                        <div class="highlight"> <%=DownFile %> </div>
                    </div>
                    <table width="100%">
                        <tr>
                            <td align="left"><%=WangQi.ERP.Web.BasePage.GetPicturePrev()%></td>
                            <td align="right"><%=WangQi.ERP.Web.BasePage.GetPictureNext()%></td>
                        </tr>
                    </table>
                    <hr />
                    <UC:ReplyControl ID="ReplyControl1" runat="server" EnableViewState="false" KeyTable="pic" KepTableID="PicId" ReplyTable="picReply" />
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        </asp:Panel>
</asp:Content>
