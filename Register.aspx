<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WangQi.ERP.Web.Register" Title="无标题页" %>

<asp:Content ID="SideContent" ContentPlaceHolderID="Side" Runat="Server">
    <div class="lframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"><span class="tt">
            <asp:Label ID="SideRegTitle" runat="server" meta:resourcekey="SideRegTitle" Text="" CssClass="sideRegTitle"></asp:Label>
            </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm">
                <ul class="sideList">
                    <li>
                        <asp:Label ID="Step1"  CssClass="step" runat="server" Text="" EnableViewState="false" meta:resourcekey="Step1"></asp:Label>
                    </li>
                    <li>
                        <asp:Label ID="Step2" CssClass="step" runat="server" Text="" EnableViewState="false" meta:resourcekey="Step2"></asp:Label>
                    </li>
                </ul>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" Text="" ></asp:Literal>
    </div>
    <div class="mframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt"><asp:Literal ID="MembersRegs" runat="server" Text="<%$ Resources:WebResourcesGlobal, MembersRegs %>"></asp:Literal></span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm f14">
            
                    <asp:Panel ID="StepPanel1" runat="server">
                        <table width="100%" border="0" cellspacing="0" cellpadding="6">
                            <tr style="display:none;">
                                <td align="right"><asp:Label ID="Label9" ForeColor="red" runat="server" Text="*"></asp:Label>
                                    <asp:Literal ID="Literal1" runat="server" Text="会员组" ></asp:Literal>
                                </td>
                                <td><asp:DropDownList ID="ddlGroup" runat="server"> </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="20%"><asp:Label ID="RequiredLabel" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                                    <asp:Literal ID="MemberNameLiteral" runat="server" Text="" meta:resourcekey="MemberNameLiteral"></asp:Literal>
                                </td>
                                <td><asp:TextBox ID="MemberName" runat="server" ValidationGroup="RegMember" MaxLength ="25" CssClass="inputbg" Width="200px"></asp:TextBox><asp:RequiredFieldValidator ID="MemberNameRequired" meta:resourcekey="MemberNameRequired" runat="server" ControlToValidate="MemberName" Display="Dynamic" ValidationGroup="RegMember"></asp:RequiredFieldValidator><asp:CustomValidator ID="MemberNameCustom" meta:resourcekey="MemberNameCustom" runat="server" ErrorMessage="" ControlToValidate="MemberName" OnServerValidate="MemberNameCustom_ServerValidate" ValidationGroup="RegMember"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><asp:Label ID="Label1" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                                    <asp:Literal ID="PasswordLiteral" runat="server" Text="" meta:resourcekey="PasswordLiteral"></asp:Literal>
                                </td>
                                <td><asp:TextBox ID="Password" runat="server" ValidationGroup="RegMember" TextMode="Password" CssClass="inputbg" Width="200px" MaxLength ="16"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" meta:resourcekey="PasswordRequired" runat="server" ControlToValidate="Password" Display="Dynamic" ValidationGroup="RegMember"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="PasswordRegularExpression" meta:resourcekey="PasswordRegularExpression" runat="server" ControlToValidate="Password" Display="Dynamic" ValidationExpression="\w{6,32}" ValidationGroup="RegMember"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><asp:Label ID="Label2" meta:resourcekey="RequiredLabel" ForeColor="red" runat="server" Text="Label"></asp:Label>
                                    <asp:Literal ID="RepeatPasswordLiteral" runat="server" meta:resourcekey="RepeatPasswordLiteral" Text=""></asp:Literal>
                                </td>
                                <td><asp:TextBox ID="RepeatPassword" runat="server" ValidationGroup="RegMember" TextMode="Password" CssClass="inputbg" Width="200px" MaxLength ="16"></asp:TextBox>
                                    <asp:CompareValidator ID="PasswordCompare" meta:resourcekey="PasswordCompare" runat="server" ErrorMessage="CompareValidator" ControlToCompare="RepeatPassword" ControlToValidate="Password" Display="Dynamic"  ValidationGroup="RegMember"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;&nbsp;
                                    <asp:Label ID="lbQuestion" meta:resourcekey="lbQuestion" runat="server" Text=""></asp:Label></td>
                                <td><asp:TextBox ID="tbQuestion" runat="server" MaxLength ="50" CssClass="inputbg" Width="200px" ></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;&nbsp;
                                    <asp:Label ID="lbAnswer" meta:resourcekey="lbAnswer" runat="server" Text=""></asp:Label></td>
                                <td><asp:TextBox ID="tbAnswer" runat="server" MaxLength ="50" CssClass="inputbg" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;&nbsp;
                                    <asp:Literal ID="FullNameLiteral" runat="server" meta:resourcekey="FullNameLiteral" Text=""></asp:Literal>
                                </td>
                                <td><asp:TextBox ID="FullName" runat="server" MaxLength ="25" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;&nbsp;
                                    <asp:Literal ID="SexLiteral" runat="server" meta:resourcekey="SexLiteral" Text=""></asp:Literal>
                                </td>
                                <td><asp:RadioButtonList ID="SexList" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" ValidationGroup="RegMember" CssClass="sexList"> </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;&nbsp;
                                    <asp:Literal ID="EmailLiteral" runat="server" meta:resourcekey="EmailLiteral" Text=""></asp:Literal>
                                </td>
                                <td><asp:TextBox ID="Email" runat="server" MaxLength ="50" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="EmailRegularExpression" meta:resourcekey="EmailRegularExpression" runat="server" ControlToValidate="Email" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="RegMember"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;&nbsp;
                                    <asp:Literal ID="TelLiteral" runat="server" meta:resourcekey="TelLiteral" Text=""></asp:Literal>
                                </td>
                                <td><asp:TextBox ID="Tel" runat="server" MaxLength ="25" ValidationGroup="RegMember"  CssClass="inputbg" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;&nbsp;
                                    <asp:Literal ID="FaxLiteral" runat="server" meta:resourcekey="FaxLiteral" Text=""></asp:Literal>
                                </td>
                                <td><asp:TextBox ID="Fax" runat="server" MaxLength ="25" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;&nbsp;
                                    <asp:Literal ID="AddressLiteral" runat="server" meta:resourcekey="AddressLiteral" Text=""></asp:Literal>
                                </td>
                                <td><asp:TextBox ID="Address" runat="server" ValidationGroup="RegMember" MaxLength ="50" CssClass="inputbg" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;&nbsp;
                                    <asp:Literal ID="QQLiteral" runat="server" meta:resourcekey="QQLiteral" Text=""></asp:Literal>
                                </td>
                                <td><asp:TextBox ID="QQ" runat="server" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;&nbsp;
                                    <asp:Literal ID="MsnLiteral" runat="server" meta:resourcekey="MsnLiteral" Text=""></asp:Literal>
                                </td>
                                <td><asp:TextBox ID="Msn" runat="server" MaxLength ="25" ValidationGroup="RegMember" CssClass="inputbg" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr> </tr>
                            <tr id="XieYi" style=" display:none">
                                <td align="right" style="height: 37px"><asp:Literal ID="AgreementLiteral" runat="server" meta:resourcekey="AgreementLiteral" Text=""></asp:Literal>
                                </td>
                                <td style="height: 37px"><asp:Label ID="Agreement" CssClass="agreement" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"></td>
                                <td><input id="ChBox" name="ChBox" type="checkbox" value="1" checked="checked"/><asp:Literal ID="Literal11" runat="server" EnableViewState="False" Text="<%$ Resources:WebResourcesGlobal, RegisterTxt %>"></asp:Literal>  <a href="javascript:openXieYi();"><%=HttpContext.GetGlobalResourceObject("WebResourcesGlobal", "RegisterView").ToString()%></a>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"></td>
                                <td><asp:Button ID="RegButton" runat="server" Text="" CssClass="btn"  meta:resourcekey="RegButton" ValidationGroup="RegMember" OnClick="RegButton_Click" />
                                    <asp:Button ID="ExitButton" runat="server" Text="" CssClass="btn"  meta:resourcekey="ExitButton" CausesValidation="False" OnClick="ExitButton_Click" />
                                </td>
                            </tr>
                        </table>
                        </asp:Panel>
                    <asp:Panel ID="StepPanel2" runat="server">
                        <asp:Label ID="Message"  meta:resourcekey="Message" runat="server" Text=""></asp:Label>
                        </asp:Panel>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
    <script type="text/javascript">
  var obj_value="1";
  function openXieYi()
  {
    var obj=document.getElementById("XieYi");
    if(obj_value=="1")
    {
      obj.style.display="";
      obj_value="0";
    }
    else
    {
      obj.style.display="none";
      obj_value="1";
    }
  }
</script>

</asp:Content>
