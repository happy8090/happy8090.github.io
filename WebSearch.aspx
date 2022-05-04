<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="WebSearch.aspx.cs" Inherits="WangQi.ERP.Web.WebSearch" Title="无标题页"  EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="Side" runat="server"></asp:Content>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent" EnableViewState="False">
    <div class="mframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt">
            <asp:Literal ID="Literal2" runat="server" meta:resourcekey="Literal2"></asp:Literal>
            </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm f14">
                <table cellpadding="6" cellspacing="0" border="0" width="100%">
                    <tr>
                        <td width="20%" align="right">搜索范围：</td><td>
						
						<script type="text/javascript" language="JavaScript" src="js/calendarDateInput.js"></script>
                        <asp:RadioButtonList ID="rbtnSearchType" runat="server" RepeatDirection="Horizontal"> </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Literal ID="Literal1" runat="server" meta:resourcekey="Literal1"></asp:Literal>
                        </td><td>
                            <asp:TextBox runat="server" ID="txtKeyWord" CssClass="inputbg"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Literal ID="Literal3" runat="server" meta:resourcekey="Literal3"></asp:Literal>
                        </td><td>
                            <asp:DropDownList runat="server" ID="ddlCategory"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" align="right">
                        时间范围：
                        </td><td>
                        <asp:Literal ID="Literal4" runat="server" meta:resourcekey="Literal4"></asp:Literal>
                        
                            <input type="text" size="10" id="dateFrom" name="dateFrom" class="inputbg" />
                            <script type="text/javascript">
				DateInput('dateFrom', 'YYYY-MM-DD', '<%=DateTime.Now.AddYears(-1).ToString("yyyy-MM-dd")%>');
				</script>
                            <asp:Literal ID="Literal5" runat="server" meta:resourcekey="Literal5"></asp:Literal>
                            <input type="text" size="10" id="dateTo"  name="dateTo" class="inputbg" />
                            <script type="text/javascript">
				DateInput('dateTo', 'YYYY-MM-DD', '<%=DateTime.Now.AddDays(1).ToString("yyyy-MM-dd")%>');
				</script></td>
                    </tr>
                    <tr>
                        <td></td><td><script type="text/javascript" language="JavaScript" src="js/clientDate.js"></script>
                            <asp:Button ID="Button1" runat="server" meta:resourcekey="Button1" CausesValidation="False" CssClass="btn" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>
