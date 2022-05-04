<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="AssociatorOrder.aspx.cs" Inherits="WangQi.ERP.Web.AssociatorOrder" Title="无标题页" %>
<%@ Register TagPrefix="uc" TagName="MemberControlMenu" Src="~/Controls/MemberControlMenu.ascx"%>

<asp:Content ID="SideContent" ContentPlaceHolderID="Side" Runat="Server">
    <uc:MemberControlMenu ID="MemberControlMenu1" runat="server" />
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" Text="" ></asp:Literal>
    </div>
       <div class="mframe">
            <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt">
             <asp:Literal ID="MyOrder" meta:resourcekey="MyOrder" runat="server"></asp:Literal>
            </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm">
    
        <asp:GridView ID="OrderList" meta:resourcekey="OrderList" runat="server" AutoGenerateColumns="False" CssClass="bor" DataKeyNames="OrderId" Width="100%" AllowPaging="True" OnPageIndexChanging="OrderList_PageIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="编号" SortExpression="OrderNum">
                    <EditItemTemplate>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        <asp:Literal ID="OrderNumHeader" meta:resourcekey="OrderNumHeader" runat="server"></asp:Literal>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="OrderNum" runat="server" Text='<%# Bind("OrderNum") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="生成时间" SortExpression="AddTime">
                    <EditItemTemplate>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="AddTime" runat="server" Text='<%# Convert.ToDateTime(Eval("AddTime")).ToString("yy/MM/dd hh:mm:ss") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderTemplate>
                        <asp:Literal ID="AddTimeHeader" meta:resourcekey="AddTimeHeader" runat="server"></asp:Literal>
                    </HeaderTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="订单状态">
                    <EditItemTemplate>
                        </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="State" runat="server" Text='<%# GetGlobalResourceObject("WebResourcesGlobal", "BargainorState"+Eval("BargainorState")).ToString()+"["+GetGlobalResourceObject("WebResourcesGlobal", "PurchaserState"+Eval("PurchaserState")).ToString()+"]" %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderTemplate>
                        <asp:Literal ID="StateHeader"  meta:resourcekey="StateHeader" runat="server"></asp:Literal>
                    </HeaderTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="订单金额">
                    <EditItemTemplate>
                        
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="TotalPrices" runat="server" Text='<%# _moneyUnit+Convert.ToSingle(Eval("TotalPrices")).ToString(".00") %>'></asp:Label>.
                    </ItemTemplate>
                    <HeaderTemplate>
                        <asp:Literal ID="TotalPricesHeader" meta:resourcekey="TotalPricesHeader" runat="server"></asp:Literal>
                    </HeaderTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="订单操作" ShowHeader="False">
                    <HeaderTemplate>
                        <asp:Literal ID="OrderLinkHeader" runat="server" meta:resourcekey="OrderLinkHeader"></asp:Literal>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="OrderDetail"  meta:resourcekey="OrderDetail" runat="server" NavigateUrl='<%#WangQi.ERP.WebsiteData.Website.IsURLRewriter()?String.Format("OrderFormDetail-{0}-{1}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("OrderId"),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("OrderFormDetail.aspx?id={0}&Language={1}",Eval("OrderId"),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>'>[OrderDetail]</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle CssClass="pager" />
        </asp:GridView>
        
    </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>


