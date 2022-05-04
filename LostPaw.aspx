<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="LostPaw.aspx.cs" Inherits="WangQi.ERP.Web.LostPaw" Title="忘记密码" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Side" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="siteMapPath" >
        <asp:Literal ID="SiteMapPath" runat="server" Text="" ></asp:Literal>
    </div>
    <div class="mframe">
        <div class="tl"></div>
        <div class="tr"></div>
        <div class="tm"> <span class="tt"> 忘记密码？ </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm f14">
                <asp:HiddenField ID="hfanswer" runat="server" />
                <asp:HiddenField ID="hfid" runat="server" />
                <asp:Label ID="lbmessage" runat="server" Text="" Visible ="false" CssClass="highlight"></asp:Label>
                <asp:Panel ID="InputName" runat="server">
                    <asp:Label ID="lbName" meta:resourcekey="lbName" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="tbName" ValidationGroup ="1" CssClass="inputbg" Width="300px"  runat="server"></asp:TextBox>
                    <asp:Label ID="lbRequest1" meta:resourcekey="Request" ForeColor ="red"  runat="server" Text=""></asp:Label>
                    <asp:RequiredFieldValidator
                ID="RequiredFieldValidator1" runat="server" meta:resourcekey="RequiredFieldValidator1" ControlToValidate="tbName" ValidationGroup ="1" ErrorMessage=""></asp:RequiredFieldValidator>
                    <asp:CustomValidator
                    ID="CustomValidator1" ControlToValidate="tbName" runat="server" meta:resourcekey="CustomValidator1" ErrorMessage="" OnServerValidate="MemberName_ServerValidate" ValidationGroup ="1"></asp:CustomValidator>
                    <br/>
                    <br/>
                    <asp:Button ID="btnNext1" meta:resourcekey="btnNext1"  ValidationGroup ="1" runat="server" CssClass="btn"  Text="" OnClick="btnNext1_Click"/>
                    </asp:Panel>
                <asp:Panel ID="InputAnswer" runat="server">
                    <asp:Label ID="lbmyQuestion" meta:resourcekey="lbQuestion" runat="server" Text=""></asp:Label>
                    <asp:Label ID="lbquestion" runat="server" Text=""></asp:Label>
                    <br />
                    <br/>
                    <asp:Label ID="lbAnswer" meta:resourcekey="lbAnswer" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="tbanswer" runat="server"  CssClass="inputbg" Width="300px" ValidationGroup ="2"></asp:TextBox>
                    <asp:Label ID="lbRequest3" meta:resourcekey="Request" ForeColor ="red"  runat="server" Text=""></asp:Label>
                    <asp:RequiredFieldValidator
                ID="RequiredFieldValidator2" ControlToValidate ="tbanswer" ValidationGroup ="2" meta:resourcekey="RequiredFieldValidator2" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                    <asp:CustomValidator
                    ID="CustomValidator2" ControlToValidate ="tbanswer"  ValidationGroup ="2"  meta:resourcekey="CustomValidator2" runat="server" ErrorMessage="" OnServerValidate ="MemberAnswer_ServerValidate"></asp:CustomValidator>
                    <br />
                    <br/>
                    <asp:Button ID="btnNext2" meta:resourcekey="btnNext1" runat="server" CssClass="btn"  Text="" OnClick="btnNext2_Click"  ValidationGroup ="2"/>
                    </asp:Panel>
                <asp:Panel ID="OutputPsw" runat="server">
                    <asp:Label ID="lbNewPaw"  meta:resourcekey="lbNewPaw" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="tbnewpas" ValidationGroup ="3"  CssClass="inputbg"  runat="server" TextMode ="Password"></asp:TextBox>
                    <asp:Label ID="lbRequest4" meta:resourcekey="Request" ForeColor ="red"  runat="server" Text=""></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate ="tbnewpas"  ValidationGroup ="3" meta:resourcekey="RequiredFieldValidator3" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="btnsubmit" meta:resourcekey="btnsubmit"
                runat="server" CssClass="btn"  Text="" ValidationGroup ="3" OnClick="btnsubmit_Click" />
                    </asp:Panel>
            </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>
