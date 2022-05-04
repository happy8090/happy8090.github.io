<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsModule.ascx.cs" Inherits="WangQi.ERP.Web.Controls.NewsModule" %>
<%@ Register Src="More.ascx" TagName="More" TagPrefix="uc1" %>
<asp:DataList ID="ddlAllCategory" runat="server" DataKeyField="MenuId" OnItemDataBound="ddlAllCategory_ItemDataBound" Width="100%">
            <ItemTemplate>
            
            <div class="mframe">
              <div class="tl"></div>
              <div class="tr"></div>
              <div class="tm">
            
            <div class="more">
              <uc1:More ID="More1" runat="server"  FileName ='<%#DataBinder.Eval(Container.DataItem,"FileName")%>' MyAttributer='<%#DataBinder.Eval(Container.DataItem,"Attributer")%>'/>
              </div>
            <h2 class="tt">
             <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"MenuName") %>'></asp:Label>
              <asp:HiddenField ID="hfMenuId" runat="server" Value ='<%#DataBinder.Eval(Container.DataItem,"MenuId") %>' />
              </h2>
              
              
              </div>
            
            <div class="pack">
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mm">
                
               
            <asp:DataList  ID="ddlCategory" runat="server" CssClass="articlelist"  Width="100%">
            <ItemTemplate ><asp:Label ID="AddTime" CssClass="addTime" runat="server" Text='<%# Convert.ToDateTime(Eval("AddTime")).ToString(_dateTimeFormat) %>'></asp:Label>
            <asp:Label ID="ClassName" CssClass="className" runat="server" Text='<%# String.Format("[{0}]",Eval("className")) %>' ></asp:Label>
                        <asp:HyperLink ID="ArticleTitle" CssClass="articletitle" runat="server" NavigateUrl='<%# WangQi.ERP.WebsiteData.Website.IsURLRewriter() ? String.Format("../{1}-D1-{0}-{2}"+WangQi.ERP.WebsiteData.Function.GetPostfixName(),Eval("ArticleId"),Eval("FileName"),WangQi.ERP.WebsiteData.Website.GetLanguage()) :String.Format("../NewsDetail.aspx?Id={0}&FileName={1}&Language={2}",Eval("ArticleId"),Eval("FileName"),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>' Text='<%# DataBinder.Eval(Container.DataItem,"Title").ToString().Length >_Length  ?(DataBinder.Eval(Container.DataItem,"Title").ToString()).Substring(0,_Length) : DataBinder.Eval(Container.DataItem,"Title").ToString() %>'></asp:HyperLink>
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