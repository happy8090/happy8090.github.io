<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="WangQi.ERP.Web.ProductDetail" Title="无标题页" %>
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
    <div class="panel">
        <asp:Label ID="GoodsCountLabel" meta:resourcekey="GoodsCountLabel" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="GoodsCount" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="GoodsCountUnit" meta:resourcekey="GoodsCountUnit" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="GrossLabel" meta:resourcekey="GrossLabel" runat="server" Text=""></asp:Label>
        <asp:Label ID="Gross" runat="server" Text=""></asp:Label>
        <br />
        <asp:Button ID="ShowCartBt" meta:resourcekey="ShowCartBt" CssClass="btn" runat="server" Text="Button" />
    </div>
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" EnableViewState="False"></asp:Literal>
    </div>
    <asp:Panel ID="NoLoginPanel" runat="server" Visible="false" EnableViewState="False">
        <asp:Label ID="PlealseLogin" runat="server" CssClass="plealseLogin" Text="" ></asp:Label>
        <asp:HiddenField ID ="hidden" runat ="server" Value="" />
        <UC:MemberLogin ID="MemberLogin1" runat="server" EnableViewState="false" />
        </asp:Panel>
    <asp:Panel ID="LoginPanel" runat="server" EnableViewState="False">
        <div class="mframe">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="tm"> <span class="tt">
                <asp:Literal ID="Literal1" runat="server" Text="<%$ Resources:WebResourcesGlobal, ProductDetail %>"></asp:Literal>
                </span></div>
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm">
                    <div class="articleT">
                        <asp:Label ID="ProductTitle" runat="server" EnableViewState="False"></asp:Label>
                    </div>
                    <div id="content">
                        <table cellpadding="10" cellspacing="0" border="0">
                            <tr>
                                <td><asp:Image ID="BigImage" EnableViewState="False"  runat="server"/></td>
                                <td>
                                        <asp:Label ID="ClassNameLabel" meta:resourcekey="ClassNameLabel" EnableViewState="False" runat="server" Text=""></asp:Label>
                                        <asp:Label ID="ClassName" runat="server" EnableViewState="False"></asp:Label>
                                        <br />
                                        <asp:Label ID="ProductNumberLabel" meta:resourcekey="ProductNumberLabel" EnableViewState="False" runat="server" Text=""></asp:Label>
                                        <asp:Label ID="ProductNumber" runat="server" Text=''></asp:Label>
                                        <br />
                                        <asp:Literal ID="Attribute1Literal" runat="server" EnableViewState="false"></asp:Literal>
                                        <br />
                                        <asp:Label ID="PriceLabel" meta:resourcekey="PriceLabel" EnableViewState="False" runat="server" Text="" Visible='<%#_isshowprice%>'></asp:Label>
                                        <asp:Label ID="Price" runat="server" Text='' Visible='<%#_isshowprice%>'></asp:Label>
                                        <br />
                                        <asp:Label ID="ProductShortContentLabel" meta:resourcekey="ProductShortContentLabel"  EnableViewState="False" runat="server" Text=""></asp:Label>
                                        <asp:Label ID="ProductShortContent" runat="server" EnableViewState="False"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:Button ID="CartButton"  meta:resourcekey="CartButton" CssClass="btn" runat="server" EnableViewState="False" CausesValidation="False" UseSubmitBehavior="False"  Visible='<%#_isshowbuybutton%>'/>
                                   </td>
                            </tr>
                        </table>
                        <asp:Literal ID="ProductContent" runat="server" EnableViewState="False"></asp:Literal>
                        <div class="highlight"> <%=DownFile %></div>
                    </div>
                    <table width="100%">
                        <tr>
                            <td align="left"><%=WangQi.ERP.Web.BasePage.GetProductPrev()%></td>
                            <td align="right"><%=WangQi.ERP.Web.BasePage.GetProductNext()%></td>
                        </tr>
                    </table>
                    <hr>
                    <UC:ReplyControl ID="ReplyControl1" runat="server" EnableViewState="false" KeyTable="product" KepTableID="ProductId" ReplyTable="productReply" />
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        </asp:Panel>
</asp:Content>
