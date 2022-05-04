<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="WangQi.ERP.Web.SearchResults" %>

<%@ Register Src="Controls/SearchResultControl.ascx" TagName="SearchResultControl"  TagPrefix="SearchResult" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=KeyWord %>站内查询结果</title>
</head>
<body>
    <form id="form1" runat="server" action="SuperSearch.aspx">

    <div runat="server" id="searchResult">
        <SearchResult:SearchResultControl ID="SearchResultControl1" runat="server" /><BR />
        <strong style="color:red"> <asp:Literal runat="server" ID="keyWord"></asp:Literal></strong>&nbsp;的搜索结果如下：
        <asp:DataList ID="dlSearchList" runat="server">
            <ItemTemplate>
                <%#Container.ItemIndex+1 %>&nbsp;&nbsp;
                <a href='<%#GetHref(Convert.ToInt32(DataBinder.Eval(Container.DataItem, "ID")),DataBinder.Eval(Container.DataItem, "Category").ToString(),DataBinder.Eval(Container.DataItem, "FileName").ToString()) %>'>
                [<%# DataBinder.Eval(Container.DataItem, "ClassName")%>]<%# DataBinder.Eval(Container.DataItem, "Title").ToString().Length > 20 ? DataBinder.Eval(Container.DataItem, "Title").ToString().Substring(0,20) : DataBinder.Eval(Container.DataItem, "Title").ToString()%></a>&nbsp;&nbsp;[<%# DataBinder.Eval(Container.DataItem, "AddTime")%>]<br />
                <%#DataBinder.Eval(Container.DataItem, "Content").ToString().Length > 50 ? DataBinder.Eval(Container.DataItem, "Content").ToString().Substring(0,50) : DataBinder.Eval(Container.DataItem, "Content").ToString()%>
            
            </ItemTemplate>
        </asp:DataList>
        <div class="pager">
            <webdiyer:AspNetPager ID="SearchListPager" runat="server" AlwaysShow="true" UrlPaging="true" EnableUrlRewriting="false"  ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current" OnPageChanged="SearchListPager_PageChanged" OnPageChanging="SearchListPager_PageChanging" PageSize="20"> </webdiyer:AspNetPager>
        </div>
        
     </div>
     
     <div runat="server" id="superSearch">    
    <script type="text/javascript" language="JavaScript" src="js/calendarDateInput.js"></script>        
    搜索内容：
        <asp:RadioButtonList ID="rbtnSearchType" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Value="title">标题</asp:ListItem>
            <asp:ListItem Value="content">内容</asp:ListItem>
            <asp:ListItem Value="other">其它</asp:ListItem>
        </asp:RadioButtonList><br />
        关键字：<asp:TextBox runat="server" ID="txtKeyWord"></asp:TextBox><br />
        类别：<asp:DropDownList runat="server" ID="ddlCategory"></asp:DropDownList><br />
        从<input type="text" size="10" id="dateFrom" name="dateFrom" runat="Server">
				<script type="text/javascript">
				DateInput('dateFrom', 'YYYY-MM-DD', '<%=DateTime.Now.AddYears(-1).ToString("yyyy-MM-dd")%>');
				</script>
        到<input type="text" size="10" id="dateTo"  name="dateTo" runat="server">
				<script type="text/javascript">
				DateInput('dateTo', 'YYYY-MM-DD', '<%=DateTime.Now.AddDays(1).ToString("yyyy-MM-dd")%>');
				</script><br />
		<script type="text/javascript" language="JavaScript" src="js/clientDate.js"></script>    
 
         <asp:Button ID="Button1" runat="server" Text="搜索" CssClass="btn" CausesValidation="False" OnClick="Button1_Click" />
     </div>

    </form>
</body>
</html>
