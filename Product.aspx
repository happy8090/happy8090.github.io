<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WangQi.ERP.Web.Product" Title="无标题页" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>

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
        <UC:MemberLogin ID="MemberLogin1" runat="server" EnableViewState="false" />
        <asp:HiddenField ID ="hidden" runat ="server" Value="" />
        </asp:Panel>
    <asp:Panel ID="LoginPanel" runat="server" EnableViewState="False">
        <div class="mframe">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="tm"> <span class="tt">
                <asp:Literal ID="PageMainContentTitle" runat="server" EnableViewState="False"></asp:Literal>
                </span></div>
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm" style=" padding:0">
                    <div class="productList">
                        <ul>
                            <%
                                bool flag = false;
                               for (int i = 0; i < productListDataTable.Rows.Count; i++)
                               {
                                   if (i % _columnsNum == 0)
                                   {
                                       flag = true; 
                                   }
                           %>
                            <li style='width:<%=ColSpanCount%>%;<% if(flag){Response.Write("clear:both;float:left;");flag = false;}%>'>
                                <div class="productImg"> <a href ='<%=WangQi.ERP.WebsiteData. Website.IsURLRewriter() ? String.Format("/{1}-D3-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),productListDataTable.Rows[i]["ProductId"].ToString(),productListDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) : String.Format("ProductDetail.aspx?id={0}&fileName={1}&Language={2}",productListDataTable.Rows[i]["ProductId"].ToString(),productListDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) %>'><img src='<%=productListDataTable.Rows[i]["PicPathSmall"].ToString() %>' style=' <%=_height==100?"": "height:"+_height+"px; "%>width:<%=_width%>px' alt='<%= productListDataTable.Rows[i]["ProductName"].ToString() %>' /></a> </div>
                                <div class="productTitle"> <span class="productClassName"><%=String.Format("[{0}]",productListDataTable.Rows[i]["ClassName"].ToString()) %></span><a href='<%=WangQi.ERP.WebsiteData. Website.IsURLRewriter() ? String.Format("{1}-D3-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),productListDataTable.Rows[i]["ProductId"].ToString(),productListDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) : String.Format("ProductDetail.aspx?id={0}&fileName={1}&Language={2}",productListDataTable.Rows[i]["ProductId"].ToString(),productListDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) %>' title='<%= productListDataTable.Rows[i]["ProductName"].ToString() %>'><%= WangQi.ERP.WebsiteData.Strings.CutLenStr(productListDataTable.Rows[i]["ProductName"].ToString(),_titleLength) %></a> </div>
                                <div class="productNumberBox">
                                    <asp:Label ID="ProductNumberLabel" meta:resourcekey="ProductNumberLabel" CssClass="productNumberLabel" EnableViewState="False" runat="server" Text=""></asp:Label>
                                    <%= productListDataTable.Rows[i]["ProductNumber"].ToString()%> </div>
                                <div class="priceBox"> <%=(bool)_isshowprice?GetLocalResourceObject("PriceLabel.Text"):""%> <%=(bool)_isshowprice ? _moneyUnit + Convert.ToSingle(productListDataTable.Rows[i]["Price"].ToString()).ToString(".00") : ""%> </div>
                                <div class="productShortContentBox"> <%= WangQi.ERP.WebsiteData.Strings.CutLenStr(productListDataTable.Rows[i]["ProductShortContent"].ToString(),_shortContentLength) %> </div>
                                <div class="cartButtonBox">
                                    <input type="button" class="btn" onclick='javascript:return CartOpen(<%=productListDataTable.Rows[i]["ProductId"].ToString() %>,<%=WangQi.ERP .WebsiteData .Website .GetLanguage() %>)' value='<%=GetLocalResourceObject("CartButton.Text") %>' style='display: <%=(bool)_isshowbuybutton?"":"none" %>' />
                                    <input type="button" class="btn" onclick='javascript:return Url("<%=WangQi.ERP.WebsiteData. Website.IsURLRewriter() ? String.Format("/{1}-D3-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),productListDataTable.Rows[i]["ProductId"].ToString(),productListDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) : String.Format("ProductDetail.aspx?id={0}&fileName={1}&Language={2}",productListDataTable.Rows[i]["ProductId"].ToString(),productListDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) %>")' value='<%=GetLocalResourceObject("CartList") %>' />
                                </div>
                            </li>
                            <% 
                               }
                            %>
                        </ul>
                    </div>
                    <div class="pager">
                        <webdiyer:AspNetPager ID="ProductListPager" runat="server" AlwaysShow="True" UrlPaging="true" EnableUrlRewriting="false" OnPageChanged="ProductListPager_PageChanged" ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" OnPageChanging="ProductListPager_PageChanging" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current" FirstPageText="<%$ Resources:WebResourcesGlobal, FirstPageText %>" LastPageText="<%$ Resources:WebResourcesGlobal, LastPageText %>" NextPageText="<%$ Resources:WebResourcesGlobal, NextPageText %>" PrevPageText="<%$ Resources:WebResourcesGlobal, PrevPageText %>"> </webdiyer:AspNetPager>
                    </div>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        </asp:Panel>
    <script type="text/javascript">
  function Url(str)
  {
    window.location.href=str;
  }
</script>
</asp:Content>
