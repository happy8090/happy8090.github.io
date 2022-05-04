<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="Pictrue.aspx.cs" Inherits="WangQi.ERP.Web.Pictrue" Title="无标题页" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/Controls/MemberLogin.ascx" TagPrefix="UC" TagName="MemberLogin" %>

<asp:Content ID="SideContent" ContentPlaceHolderID="Side" Runat="Server">
    <div class="panel" id="ClassList" runat="server"> <%=OutPutStr %>
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
        <asp:HiddenField ID ="hidden" runat ="server" Value="" />
        <UC:MemberLogin ID="MemberLogin1" runat="server" EnableViewState="false" />
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
                    <div class="picList">
                        <ul>
                            <%
                                bool flag = false;
                               for (int i = 0; i < picListDataTable.Rows.Count; i++)
                               {
                                   if (i %_columnsNum == 0)
                                   {
                                       flag = true;
                                   }
                           %>
                            <li style='width:<%=ColSpanCount %>%;<% if(flag){Response.Write("clear:both;float:left;");flag = false;}%>'>
                                <div class="picImg"> <a href='<%=WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("/{1}-D2-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),picListDataTable.Rows[i]["PicId"].ToString(),picListDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("PicDetail.aspx?id={0}&fileName={1}&Language={2}",picListDataTable.Rows[i]["PicId"].ToString(),picListDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>'><%=picListDataTable.Rows[i]["PicPathSmall"].ToString().Trim() == "" ? "" : "<img src='" + picListDataTable.Rows[i]["PicPathSmall"].ToString() + "' Alt='" + picListDataTable.Rows[i]["Title"].ToString() + "' style='width:" + _width + "px" + (_height == 100 ? "" : ";height:" + _height + "px") + "'/>"%></a> </div>
                                <div class="picTitle"> <span class="picClassName"><%= String.Format("[{0}]",picListDataTable.Rows[i]["ClassName"].ToString()) %></span><a href='<%= WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("{1}-D2-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),picListDataTable.Rows[i]["PicId"].ToString(),picListDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("PicDetail.aspx?id={0}&fileName={1}&Language={2}",picListDataTable.Rows[i]["PicId"].ToString(),picListDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>'><%=WangQi.ERP.WebsiteData.Strings.CutLenStr(picListDataTable.Rows[i]["Title"].ToString(), _titleLength)%></a> </div>
                                <div class="picShortContent"> <%= WangQi.ERP.WebsiteData.Strings.CutLenStr(picListDataTable.Rows[i]["PicShortContent"].ToString(),_shortContentLength) %> </div>
                            </li>
                            <% 
                               }
                            %>
                        </ul>
                    </div>
                    <div class="pager">
                        <webdiyer:AspNetPager ID="PicListPager" runat="server" AlwaysShow="true" UrlPaging="true" EnableUrlRewriting="false" OnPageChanged="PicListPager_PageChanged" ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" OnPageChanging="PicListPager_PageChanging" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current" FirstPageText="<%$ Resources:WebResourcesGlobal, FirstPageText %>" LastPageText="<%$ Resources:WebResourcesGlobal, LastPageText %>" NextPageText="<%$ Resources:WebResourcesGlobal, NextPageText %>" PrevPageText="<%$ Resources:WebResourcesGlobal, PrevPageText %>"> </webdiyer:AspNetPager>
                    </div>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
        </asp:Panel>
</asp:Content>
