<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="AssociatorEdit.aspx.cs" Inherits="WangQi.ERP.Web.AssociatorEdit" Title="ÎÞ±êÌâÒ³" %>
<%@ Register TagPrefix="uc" TagName="MemberControlMenu" Src="~/Controls/MemberControlMenu.ascx"%>
<asp:Content ID="SideContent" ContentPlaceHolderID="Side" Runat="Server">
    <uc:MemberControlMenu ID="MemberControlMenu1" runat="server" />
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" Text="" ></asp:Literal>
    </div>
    <div class="mframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt"><asp:Literal ID="MyLibrary" meta:resourcekey="MyLibrary" runat="server"></asp:Literal></span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm f14">
                <asp:Label ID="Message"  meta:resourcekey="Message" runat="server" Text=""></asp:Label>
                <table width="100%" border="0" cellspacing="0" cellpadding="6">
                    <tr valign="middle">
                        <td align="right" width="20%"><asp:Label ID="RequiredLabel" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                            <asp:Literal ID="MemberNameLiteral" runat="server" Text="" meta:resourcekey="MemberNameLiteral"></asp:Literal>
                        </td>
                        <td><asp:Literal ID="MemberName" runat="server" ></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="Label1" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                            <asp:Literal ID="PasswordLiteral" runat="server" Text="" meta:resourcekey="PasswordLiteral"></asp:Literal>
                        </td>
                        <td><asp:TextBox ID="Password" runat="server" ValidationGroup="RegMember" MaxLength ="16" TextMode="Password" CssClass="inputbg" Width="200px"></asp:TextBox>
                            &nbsp;
                            <asp:RegularExpressionValidator ID="PasswordRegularExpression" meta:resourcekey="PasswordRegularExpression" runat="server" ControlToValidate="Password" Display="Dynamic" ValidationExpression="\w{6,32}" ValidationGroup="RegMember"></asp:RegularExpressionValidator>
                            <asp:Label ID="PasswordExplainLabel" meta:resourcekey="PasswordExplainLabel" CssClass="explain" runat="server" Text="Label"></asp:Label>
                            <asp:HiddenField ID="TempPassword" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="Label2" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                            <asp:Literal ID="QuestionLiteral" runat="server" meta:resourcekey="QuestionLiteral" Text =""></asp:Literal></td>
                        <td><asp:TextBox ID="Question" MaxLength ="50" runat="server" CssClass="inputbg" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ErrorMessage="QuestionRequired" ControlToValidate ="Question"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="Label7" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                            <asp:Literal ID="AnswerLiteral" runat="server" meta:resourcekey="AnswerLiteral" Text =""></asp:Literal></td>
                        <td><asp:TextBox ID="Answer" MaxLength ="50" runat="server" CssClass="inputbg" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ErrorMessage="AnswerRequired" ControlToValidate="Answer"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="Label3" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                            <asp:Literal ID="FullNameLiteral" runat="server" meta:resourcekey="FullNameLiteral" Text=""></asp:Literal>
                        </td>
                        <td><asp:TextBox ID="FullName" MaxLength ="25" runat="server" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="FullNameRequired" meta:resourcekey="FullNameRequired" runat="server" ControlToValidate="FullName" Display="Dynamic" ValidationGroup="RegMember"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="Label4" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                            <asp:Literal ID="SexLiteral" runat="server" meta:resourcekey="SexLiteral" Text=""></asp:Literal>
                        </td>
                        <td><asp:RadioButtonList ID="SexList" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" ValidationGroup="RegMember" CssClass="sexList"> </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="Label5" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                            <asp:Literal ID="EmailLiteral" runat="server" meta:resourcekey="EmailLiteral" Text=""></asp:Literal>
                        </td>
                        <td><asp:TextBox ID="Email" runat="server" MaxLength ="50" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="EmailRequired" meta:resourcekey="EmailRequired" runat="server" ControlToValidate="Email" Display="Dynamic" ValidationGroup="RegMember"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="EmailRegularExpression" meta:resourcekey="EmailRegularExpression" runat="server" ControlToValidate="Email" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="RegMember"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="Label6" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                            <asp:Literal ID="TelLiteral" runat="server" meta:resourcekey="TelLiteral" Text=""></asp:Literal>
                        </td>
                        <td><asp:TextBox ID="Tel" MaxLength ="25" runat="server" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="TelRequired" meta:resourcekey="TelRequired" runat="server" ControlToValidate="Tel" Display="Dynamic" ValidationGroup="RegMember"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Literal ID="FaxLiteral" runat="server" meta:resourcekey="FaxLiteral" Text=""></asp:Literal>
                        </td>
                        <td><asp:TextBox ID="Fax" runat="server" MaxLength ="25" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="Label8" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                            <asp:Literal ID="AddressLiteral" runat="server" meta:resourcekey="AddressLiteral" Text=""></asp:Literal>
                        </td>
                        <td><asp:TextBox ID="Address" MaxLength ="50" runat="server" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="AddressRequired" meta:resourcekey="AddressRequired" runat="server" ControlToValidate="Address" Display="Dynamic" ValidationGroup="RegMember"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Literal ID="QQLiteral" runat="server" meta:resourcekey="QQLiteral" Text=""></asp:Literal>
                        </td>
                        <td><asp:TextBox ID="QQ" MaxLength ="25" runat="server" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Literal ID="MsnLiteral" runat="server" meta:resourcekey="MsnLiteral" Text=""></asp:Literal>
                        </td>
                        <td><asp:TextBox ID="Msn" runat="server" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"></td>
                        <td><asp:Button ID="SaveButton" runat="server" Text="" CssClass="btn"  meta:resourcekey="SaveButton" ValidationGroup="RegMember" OnClick="SaveButton_Click" />
                            &nbsp; </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>
