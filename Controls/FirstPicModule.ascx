<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FirstPicModule.ascx.cs" Inherits="WangQi.ERP.Web.Controls.FirstPicModule" %>
<%@ Register Src="More.ascx" TagName="More" TagPrefix="uc1" %>

<asp:DataList ID="ddlAllCategory" runat="server" DataKeyField="MenuId" OnItemDataBound="ddlAllCategory_ItemDataBound">
    <ItemTemplate>
        <div class="mframe">
            <div class="tl"></div>
            <div class="tr"></div>
            <div class="tm">
                <div class="more">
                    <uc1:More ID="More1" runat="server"  FileName ='<%#DataBinder.Eval(Container.DataItem,"FileName")%>' MyAttributer='<%#DataBinder.Eval(Container.DataItem,"Attributer")%>'/>
                </div>
                <h2 class="tt"> 图文内容
                <asp:HiddenField ID="hfMenuId" runat="server" Value ='<%#DataBinder.Eval(Container.DataItem,"MenuId") %>' />
                </h2> </div>
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm">
                    <asp:DataList ID="ddlCategory" runat="server" CssClass="FirstpicList" EnableViewState="False" RepeatDirection="Horizontal"  >
                        <ItemTemplate>
                            <div class="picImage"> <a href ='<%# WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("../{1}-D2-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("PicId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("../PicDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("PicId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>'> <%# System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(DataBinder.Eval(Container.DataItem, "PicPathSmall").ToString())) ? "<img src='" + DataBinder.Eval(Container.DataItem, "PicPathSmall") + "' Width='"+ new Unit(_width)+"' Height='"+ new Unit(_height)+"' AlternateText='"+ DataBinder.Eval(Container.DataItem,"Title") +"' />" : "" %></a>
                                 </div>
                            <div class="picText">
                                <asp:Label ID="ClassName" CssClass="picClassName" runat="server" Text='<%# String.Format("[{0}]",Eval("ClassName").ToString()) %>' Visible="<%# _showClassName %>"></asp:Label>
                                <asp:HyperLink ID="PicTitle" CssClass="picTitle" runat="server" NavigateUrl='<%# WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("~/{1}-D2-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("PicId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) : String.Format("~/PicDetail.aspx?id={0}&fileName={1}&Language={2}",Eval("PicId").ToString(),Eval("FileName").ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>' Text='<%# WangQi.ERP.WebsiteData.Strings.CutLenStr(Eval("Title").ToString(),_titleLength) %>' ToolTip='<%# Eval("Title") %>' Target="_blank"></asp:HyperLink>
                                <asp:Label ID="PicShortContent" CssClass="picShortContent" runat="server" Text='<%# WangQi.ERP.WebsiteData.Strings.CutLenStr(Eval("PicShortContent").ToString(),_shortContentLength) %>' Visible="<%# _showShortContent %>"></asp:Label>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
            <div class="bl"></div>
            <div class="br"></div>
            <div class="bm"></div>
        </div>
    </ItemTemplate>
</asp:DataList>
