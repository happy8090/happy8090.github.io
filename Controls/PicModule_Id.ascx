<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PicModule_Id.ascx.cs" Inherits="WangQi.ERP.Web.Controls.PicModule_Id" EnableViewState="false" %>
<div class="pic_Id">
    <ul>
<%for(int i=0;i<myDataTable.Rows.Count;i++){ 
      if(WangQi.ERP.WebsiteData.Website.IsURLRewriter()){
      %>
         <li>
		<div class="pic_IdImg">
		<%
            if (myDataTable.Rows[i]["PicPathSmall"].ToString().IndexOf("http://") > -1)
            {
                Response.Write("<a href='" + String.Format("{1}-D2-{0}-{2}" + WangQi.ERP.WebsiteData.Function.GetPostfixName(), myDataTable.Rows[i]["PicId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'> <img src='" + myDataTable.Rows[i]["PicPathSmall"] + "'/></a>");
            }
            else
            {
                Response.Write(System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(myDataTable.Rows[i]["PicPathSmall"].ToString())) ? "<a href='" + String.Format("{1}-D2-{0}-{2}" + WangQi.ERP.WebsiteData.Function.GetPostfixName(), myDataTable.Rows[i]["PicId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'> <img src='" + myDataTable.Rows[i]["PicPathSmall"] + "'/></a>" : System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(DefaultImg)) ? "<a href='" + String.Format("{1}-D2-{0}-{2}" + WangQi.ERP.WebsiteData.Function.GetPostfixName(), myDataTable.Rows[i]["PicId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'><img src='" + DefaultImg + "' /></a>" : ""); 
            }
          
           %>
        </div>
        
        <div class="pic_IdTitle">
        <a href='<%=String.Format("{1}-D2-{0}-{2}" + WangQi.ERP.WebsiteData.Function.GetPostfixName(), myDataTable.Rows[i]["PicId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage())%>' >
        <%=IsShowCate ? "["+myDataTable.Rows[i]["ClassName"]+"]" : ""%> 
        <%=myDataTable.Rows[i]["Title"].ToString().Length > TitleLength ? myDataTable.Rows[i]["Title"].ToString().Substring(0, TitleLength) : myDataTable.Rows[i]["Title"].ToString()%>
        <%=IsShowDate?"["+Convert.ToDateTime(myDataTable.Rows[i]["AddTime"]).ToString(DateFormat)+"]":""%></a>
        </div>
        <div class="pic_IdContent">
        
       <a href='<%=String.Format("{1}-D2-{0}-{2}" + WangQi.ERP.WebsiteData.Function.GetPostfixName(), myDataTable.Rows[i]["PicId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage())%>' >
            <%=myDataTable.Rows[i]["PicShortContent"].ToString().Length > ContentLength ? myDataTable.Rows[i]["PicShortContent"].ToString().Substring(0,ContentLength) : myDataTable.Rows[i]["PicShortContent"].ToString()%>
        </a>
        </div>
        </li>

      
      <%}else{ %>
<li>
		<div class="pic_IdImg">
		<%
            if (myDataTable.Rows[i]["PicPathSmall"].ToString().IndexOf("http://") > -1)
            {
                Response.Write("<a href='" + String.Format("PicDetail.aspx?id={0}&fileName={1}&Language={2}", myDataTable.Rows[i]["PicId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'><img src='" + myDataTable.Rows[i]["PicPathSmall"] + "'/></a>");
            }
            else
            { 
                Response.Write(System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(myDataTable.Rows[i]["PicPathSmall"].ToString())) ? "<a href='" + String.Format("PicDetail.aspx?id={0}&fileName={1}&Language={2}", myDataTable.Rows[i]["PicId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'><img src='" + myDataTable.Rows[i]["PicPathSmall"] + "'/></a>" : System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(DefaultImg)) ? "<a href='" + String.Format("PicDetail.aspx?id={0}&fileName={1}&Language={2}", myDataTable.Rows[i]["PicId"].ToString(), myDataTable.Rows[i]["FileName"].ToString(), WangQi.ERP.WebsiteData.Website.GetLanguage()) + "'><img src='" + DefaultImg + "' /></a>" : "");
            }
           %>
        </div>

        <div class="pic_IdTitle">
        <a href='<%=String.Format("PicDetail.aspx?id={0}&fileName={1}&Language={2}",myDataTable.Rows[i]["PicId"].ToString(),myDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>'>
        <%=IsShowCate ? "["+myDataTable.Rows[i]["ClassName"]+"]" : ""%> 
        <%=myDataTable.Rows[i]["Title"].ToString().Length > TitleLength ? myDataTable.Rows[i]["Title"].ToString().Substring(0, TitleLength) : myDataTable.Rows[i]["Title"].ToString()%>
        <%=IsShowDate?"["+Convert.ToDateTime(myDataTable.Rows[i]["AddTime"]).ToString(DateFormat)+"]":""%></a>
        </div>
        <div class="pic_IdContent">
        <a href='<%=String.Format("PicDetail.aspx?id={0}&fileName={1}&Language={2}",myDataTable.Rows[i]["PicId"].ToString(),myDataTable.Rows[i]["FileName"].ToString(),WangQi.ERP.WebsiteData.Website.GetLanguage()) %>'>
        <%=myDataTable.Rows[i]["PicShortContent"].ToString().Length > ContentLength ? myDataTable.Rows[i]["PicShortContent"].ToString().Substring(0,ContentLength) : myDataTable.Rows[i]["PicShortContent"].ToString()%></a>
        </div>
</li>
<%}} %>

</ul></div>
