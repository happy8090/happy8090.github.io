<%@ Page Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="CompanyMonth.aspx.cs" Inherits="WangQi.ERP.Web.admin.CompanyMonth" Title="后台管理" ValidateRequest="false" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <div class="leftMenuTitle">
		人员管理
	</div>
	<ul class="leftMenu">
	    <li><a href="MemberList.aspx">网站人员</a></li>
	    <li><a href="CompanyList.aspx">机关人员 </a></li>
		<li><a href="MemberAdd.aspx">添加人员</a></li>
		<li><a href="MemberGroup.aspx">所属部门</a></li>
		<li><a href="MemberState.aspx">人员状态 </a></li>
		<li><a href="AdministratorsInfo.aspx">管理员</a></li>
		<li><a href="RegisterAgreement.aspx">注册协议</a></li>
		<li><a href="SysLog.aspx">登录日志 </a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
  <div id="mainMenu">
  	<ul>

  	<li><a href="#">人员状态</a></li>
    <li><a href="CompanyList.aspx">人员列表</a></li>
	</ul>
  </div>
   <div id="main">
    
   <div>
        姓名：<asp:Label ID="UserName" runat="server" Text=""></asp:Label><br />
        
        <select name="MySetYear" id="MySetYear">
 <script language="javascript">
    var CurrentDate=new Date();
	for(var i=2008;i<=CurrentDate.getYear();i++)
	{
	  if(i==CurrentDate.getYear())
	  {
	     document.write("<option value=\""+i+"\" selected=\"selected\">"+i+"</option>");
	  }
	  else
	  {
	    document.write("<option value=\""+i+"\">"+i+"</option>");
	  }
	}
 </script>
 
</select>
年
<select name="MySetMonth" id="MySetMonth">
 <script language="javascript">
   for(var i=1;i<=12;i++)
   {
     if(i==CurrentDate.getMonth()+1)
	 {
	   document.write("<option value=\""+i+"\" selected=\"selected\">"+i+"</option>");
	 }
	 else
	 {
	    document.write("<option value=\""+i+"\">"+i+"</option>");
	 }
   }
 </script>
</select>
月
       <asp:Button ID="btn_Search" runat="server" OnClick="btn_Search_Click" Text="查询" /><br />
        
        <asp:GridView ID="gvMemberStateList" runat="server" AutoGenerateColumns="False"
            CellPadding="0" CssClass="gv" EmptyDataText="暂无任何信息" Width="100%">
            <Columns>
                <asp:TemplateField HeaderText="人员状态">       
                    <ControlStyle CssClass="gvOrderId" />
                    <ItemTemplate>
                        <%# GetStateName(Eval("StateID"))%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="打卡时间" SortExpression="Title">                
                    <ItemTemplate>
                        <%# Eval("AddTime") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IP" SortExpression="AddTime">                  
                    <ItemTemplate>
                       <%# Eval("IP") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="详情">                  
                    <ItemTemplate>
                        <%# GetStateDetail(Eval("StateID"),Eval("ID")) %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <RowStyle CssClass="gvRow" />
            <EditRowStyle CssClass="gvEditRow" />
            <PagerStyle CssClass="gvPage" />
            <HeaderStyle CssClass="gvHeader" />
            <AlternatingRowStyle CssClass="gvAlternatingRow" />
        </asp:GridView>
    
    </div>
<br />
       &nbsp; &nbsp;
  <script language="JavaScript" type="text/javascript" >
        topMenuThisPage(3);//当前位置顶部菜单标识
        leftMenuThisPage(1,1);//当前位置左侧菜单标识
        mainMenuThisPage(1);//当前选项卡标识
  </script> </div>
</asp:Content>