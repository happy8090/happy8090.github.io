<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsAllTopModule.ascx.cs" Inherits="WangQi.ERP.Web.Controls.NewsAllTopModule" %>
<%@ Register Src="More.ascx" TagName="More" TagPrefix="uc1" %>
<asp:DataList ID="ddlAllCategory" runat="server" DataKeyField="MenuId" OnItemDataBound="ddlAllCategory_ItemDataBound" Width="100%">
            <ItemTemplate>
            

             <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"MenuName") %>'></asp:Label>
              <asp:HiddenField ID="hfMenuId" runat="server" Value ='<%#DataBinder.Eval(Container.DataItem,"MenuId") %>' />

                
                
            <asp:DataList  ID="ddlCategory" runat="server">
            <ItemTemplate >
            <asp:Label ID="ClassName" CssClass="className" runat="server" Text='<%# IsShowCate ? String.Format("[{0}]",Eval("className")):"" %>' ></asp:Label>
                        <asp:HyperLink ID="ArticleTitle" CssClass="articleTitle" runat="server" NavigateUrl='<%# WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("../{1}-D1-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ArticleId"),Eval("FileName"),WangQi.ERP.WebsiteData.Website.GetLanguage()) :String.Format("../NewsDetail.aspx?Id={0}&FileName={1}&Language={2}",Eval("ArticleId"),Eval("FileName"),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>' Text='<%# DataBinder.Eval(Container.DataItem,"Title").ToString().Length >_Length  ?(DataBinder.Eval(Container.DataItem,"Title").ToString()).Substring(0,_Length) : DataBinder.Eval(Container.DataItem,"Title").ToString() %>'></asp:HyperLink><%# Eval("IsTop").ToString()=="1"?"[TOP]":"" %>
                        <asp:Label ID="AddTime" CssClass="addTime" runat="server" Text='<%# IsShowDate ? Convert.ToDateTime(Eval("AddTime")).ToString(_dateTimeFormat):"" %>'></asp:Label>  
            </ItemTemplate>
            </asp:DataList>
            

            </ItemTemplate>
        </asp:DataList>