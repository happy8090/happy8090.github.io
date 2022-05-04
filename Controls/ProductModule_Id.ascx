<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductModule_Id.ascx.cs" Inherits="WangQi.ERP.Web.Controls.ProductModule_Id" %>

<div class="Prod_Id<%=Type%>">
    <ul>
        <%
    for (int i = 0; i < myDataTable.Rows.Count; i++)
    {
        if (WangQi.ERP.WebsiteData.Website.IsURLRewriter())
        {
%>
        <li style='width:<%=ColSpanCount %>%'>
            <div class="Prod_IdImg"> 
            <%
                if (myDataTable.Rows[i]["PicPathSmall"].ToString().IndexOf("http://") > -1)
                {
                    Response.Write("<a href='" + String.Format("/{1}-D3-{0}-{2}" + WangQi.ERP.WebsiteData.Function.GetPostfixName(), myDataTable.Rows[i]["ProductId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'> <img src='" + myDataTable.Rows[i]["PicPathSmall"] + "'/></a>");
                }
                else
                {
                    Response.Write(System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(myDataTable.Rows[i]["PicPathSmall"].ToString())) ? "<a href='" + String.Format("/{1}-D3-{0}-{2}" + WangQi.ERP.WebsiteData.Function.GetPostfixName(), myDataTable.Rows[i]["ProductId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'> <img src='" + myDataTable.Rows[i]["PicPathSmall"] + "'/></a>" : System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(DefaultImg)) ? "<a href='" + String.Format("/{1}-D3-{0}-{2}" + WangQi.ERP.WebsiteData.Function.GetPostfixName(), myDataTable.Rows[i]["ProductId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'><img src='" + DefaultImg + "' /></a>" : "");
                }
             %></div>
            <div class="Prod_IdCont">
            <div class="Prod_IdTitle"> <a href='<%= String.Format("/{1}-D3-{0}-{2}" + WangQi.ERP.WebsiteData.Function.GetPostfixName(), myDataTable.Rows[i]["ProductId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage())%>' > <%=IsShowCate ? "["+myDataTable.Rows[i]["ClassName"]+"]" : ""%> <%=myDataTable.Rows[i]["ProductName"].ToString().Length > TitleLength ? myDataTable.Rows[i]["ProductName"].ToString().Substring(0, TitleLength) : myDataTable.Rows[i]["ProductName"].ToString()%> <%=IsShowDate?"["+Convert.ToDateTime(myDataTable.Rows[i]["AddTime"]).ToString(DateFormat)+"]":""%></a></div>
            <div class="Prod_IdPrice"> <%=GetLocalResourceObject("ProductPrice") %><%=Convert.ToSingle(myDataTable.Rows[i]["Price"].ToString()).ToString(".00")%> </div>
            <div class="Prod_IdNum"> <%=GetLocalResourceObject("ProductNum") %><%=myDataTable.Rows[i]["ProductNumber"].ToString()%> </div>
            <input class="cartButton" type="button" onclick='javascript:return CartOpen(<%=myDataTable.Rows[i]["ProductId"].ToString() %>,<%=WangQi.ERP .WebsiteData .Website .GetLanguage() %>)' value='<%=GetLocalResourceObject("Buy") %>' />
            <input class="cartButton" type="button" onclick='javascript:return CartOpen(<%=myDataTable.Rows[i]["ProductId"].ToString() %>,<%=WangQi.ERP .WebsiteData .Website .GetLanguage() %>)' value='<%=GetLocalResourceObject("BuyList") %>' />
            <div class="Prod_IdContent"> <a href='<%=String.Format("/{1}-D3-{0}-{2}" + WangQi.ERP.WebsiteData.Function.GetPostfixName(), myDataTable.Rows[i]["ProductId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage())%>' > <%=myDataTable.Rows[i]["ProductShortContent"].ToString().Length > ContentLength ? myDataTable.Rows[i]["ProductShortContent"].ToString().Substring(0, ContentLength) : myDataTable.Rows[i]["ProductShortContent"].ToString()%> </a> </div></div>
        </li>
        <%
        }
        else
        {
%>
        <li style='width:<%=ColSpanCount %>%'>
            <div class="Prod_IdImg"> 
            <%
                if (myDataTable.Rows[i]["PicPathSmall"].ToString().IndexOf("http://") > -1)
                {
                    Response.Write("<a href='" + String.Format("/ProductDetail.aspx?id={0}&fileName={1}&Language={2}", myDataTable.Rows[i]["ProductId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'><img src='" + myDataTable.Rows[i]["PicPathSmall"] + "'/></a>");
                }
                else
                {
                    Response.Write(System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(myDataTable.Rows[i]["PicPathSmall"].ToString())) ? "<a href='" + String.Format("/ProductDetail.aspx?id={0}&fileName={1}&Language={2}", myDataTable.Rows[i]["ProductId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'><img src='" + myDataTable.Rows[i]["PicPathSmall"] + "'/></a>" : System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(DefaultImg)) ? "<a href='" + String.Format("/ProductDetail.aspx?id={0}&fileName={1}&Language={2}", myDataTable.Rows[i]["ProductId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'><img src='" + DefaultImg + "' /></a>" : ""); 
                }
             %></div>
            <div class="Prod_IdCont">
            <div class="Prod_IdTitle"> <a href='<%=String.Format("/ProductDetail.aspx?id={0}&fileName={1}&Language={2}",myDataTable.Rows[i]["ProductId"].ToString(),myDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>'> <%=IsShowCate ? "["+myDataTable.Rows[i]["ClassName"]+"]" : ""%> <%=myDataTable.Rows[i]["ProductName"].ToString().Length > TitleLength ? myDataTable.Rows[i]["ProductName"].ToString().Substring(0, TitleLength) : myDataTable.Rows[i]["ProductName"].ToString()%> <%=IsShowDate?"["+Convert.ToDateTime(myDataTable.Rows[i]["AddTime"]).ToString(DateFormat)+"]":""%></a></div>
            <div class="Prod_IdPrice"><%=GetLocalResourceObject("ProductPrice") %><%=Convert.ToSingle(myDataTable.Rows[i]["Price"].ToString()).ToString(".00")%> </div>
            <div class="Prod_IdNum"> <%=GetLocalResourceObject("ProductNum") %><%=myDataTable.Rows[i]["ProductNumber"].ToString()%> </div>
            <input class="cartButton" type="button" onclick='javascript:return CartOpen(<%=myDataTable.Rows[i]["ProductId"].ToString() %>,<%=WangQi.ERP .WebsiteData .Website .GetLanguage() %>)' value='<%=GetLocalResourceObject("Buy") %>' />
            <input class="cartButton" type="button" onclick='javascript:return CartOpen(<%=myDataTable.Rows[i]["ProductId"].ToString() %>,<%=WangQi.ERP .WebsiteData .Website .GetLanguage() %>)' value='<%=GetLocalResourceObject("BuyList") %>' />
            <div class="Prod_IdContent"> <a href='<%=String.Format("/ProductDetail.aspx?id={0}&fileName={1}&Language={2}",myDataTable.Rows[i]["ProductId"].ToString(),myDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage())  %>'> <%=myDataTable.Rows[i]["ProductShortContent"].ToString().Length > ContentLength ? myDataTable.Rows[i]["ProductShortContent"].ToString().Substring(0, ContentLength) : myDataTable.Rows[i]["ProductShortContent"].ToString()%></a> </div></div>
        </li>
        <%
        }
    }
     %>
    </ul>
</div>
