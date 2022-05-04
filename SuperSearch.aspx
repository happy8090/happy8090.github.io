<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="SuperSearch.aspx.cs" Inherits="WangQi.ERP.Web.SuperSearch" Title="无标题页"  EnableEventValidation="false"%>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="Controls/WebSiteSearch.ascx" TagName="WebSiteSearch" TagPrefix="UC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Side" runat="server"></asp:Content>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent" EnableViewState="False">
    <div class="mframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt"> <strong style="color:red">
            <asp:Literal runat="server" ID="keyWord"></asp:Literal>
            </strong> <%=HttpContext.GetGlobalResourceObject("WebResourcesGlobal", "SuperSearch").ToString()%> </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm f14">
                <UC:WebSiteSearch ID="WebSiteSearch2" runat="server" />
                <hr />
                <asp:DataList ID="dlSearchList" runat="server" Width="100%" CssClass="bor">
                    <ItemTemplate>
                        <td align="center"><%#Container.ItemIndex+1 %>.</td>
                        <td align="left"><a href='<%#GetHref(Convert.ToInt32(DataBinder.Eval(Container.DataItem, "ID")),DataBinder.Eval(Container.DataItem, "Category").ToString(),DataBinder.Eval(Container.DataItem, "FileName").ToString()) %>'> [<%# DataBinder.Eval(Container.DataItem, "ClassName")%>] <%# DataBinder.Eval(Container.DataItem, "Title").ToString().Length > 20 ? DataBinder.Eval(Container.DataItem, "Title").ToString().Substring(0,20) : DataBinder.Eval(Container.DataItem, "Title").ToString()%></a></td>
                        <td align="center" width="130"> [<%# DataBinder.Eval(Container.DataItem, "AddTime")%>] </td>
                    </ItemTemplate>
                </asp:DataList>
                <div class="pager">
                    <webdiyer:AspNetPager ID="SearchListPager" runat="server" AlwaysShow="true" UrlPaging="true" EnableUrlRewriting="false"  ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current" OnPageChanged="SearchListPager_PageChanged" OnPageChanging="SearchListPager_PageChanging" PageSize="20"> </webdiyer:AspNetPager>
                </div>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>
