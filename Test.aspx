<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WangQi.ERP.Web.Test" %>
<%@ Register Src="Controls/PicToPicModule.ascx" TagName="PicToPicModule" TagPrefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
        
     <uc1:PicToPicModule id="PicToPicModule1" runat="server" TotalCount=4 ColSpanCount=3 ClassID=21 TitleLength=14 ContentLength=0 IsShowCate=false IsShowDate=false DateFormat="yyyy/MM/dd">
       </uc1:PicToPicModule>
    </form>
</body>
</html>
