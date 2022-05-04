<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="URLSave.aspx.cs" Inherits="WangQi.AdminUrl.Web.Web.URLSave" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Message" runat="server" Text="" Visible ="false" ></asp:Label><br />
        <hr />
        <asp:GridView ID="gvPostfixName" runat="server" AutoGenerateColumns="False" DataKeyNames ="ID" OnRowEditing="gvPostfixName_RowEditing" OnRowCancelingEdit ="gvPostfixName_RowCancelingEdit"  OnRowUpdating ="gvPostfixName_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </EditItemTemplate>
                   <ItemTemplate>
                   <%#Container.DataItemIndex+1 %>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PostfixName">
                    <EditItemTemplate>
                        <asp:TextBox ID="gvtbName" runat="server" Text='<%# Bind("PostfixName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="gvlbName" runat="server" Text='<%# Bind("PostfixName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="使用">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkIsUse" runat="server" Checked='<%#Convert.ToInt32(DataBinder.Eval(Container.DataItem,"IsUse"))==1?true:false%>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkIsUse" runat="server" Checked='<%#Convert.ToInt32(DataBinder.Eval(Container.DataItem,"IsUse"))==1?true:false%>' Enabled="false" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="删除">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkDelete" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkDelete" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField HeaderText="操作" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="btnAll" runat="server" Text="全选" OnClick="btnAll_Click" />
        <asp:Button ID="btnReverse" runat="server" Text="反选" OnClick="btnReverse_Click" />
        <asp:Button ID="btnCancell" runat="server" Text="取消" OnClick="btnCancell_Click" />
        <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="btnDelete_Click" /><br />
        添加后缀名:<asp:TextBox ID="tbName" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="btnSubmit_Click" /><br />
    
    </div>
    </form>
</body>
</html>
