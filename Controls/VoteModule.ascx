<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VoteModule.ascx.cs" Inherits="WangQi.ERP.Web.Controls.VoteModule" %>
<asp:Panel ID="VotePanel" runat="server" CssClass="votePanel">
    <b><asp:Label ID="VoteTitle" runat="server" EnableViewState="False"></asp:Label></b>

        <asp:PlaceHolder ID="VoteListPlaceHolder" runat="server" EnableViewState="False"></asp:PlaceHolder>

        <asp:HiddenField ID="LabelStr" runat="server" EnableViewState="False" />
        <asp:HiddenField ID="ValueStr" runat="server" />
        <asp:HiddenField ID="EditId" runat="server" />
        <asp:CustomValidator ID="VoteListCustom" runat="server" ErrorMessage="" OnServerValidate="VoteListCustom_ServerValidate" EnableViewState="False" ValidationGroup="Vote"></asp:CustomValidator>
        
&nbsp;&nbsp;
      
        <asp:Button ID="VoteButton" runat="server" CssClass="btn" Text="" meta:resourcekey="VoteButton" ValidationGroup="Vote" OnClick="VoteButton_Click" EnableViewState="False" TabIndex="1" />
&nbsp;&nbsp;
        
        <asp:Button ID="ShowButton" runat="server" CssClass="btn" Text="" meta:resourcekey="ShowButton" CausesValidation="False" EnableViewState="False" OnClientClick ='<%# String.Format("return ShowVoteOpen({0},{1});",_voteId.ToString(),WangQi.ERP.WebsiteData. Website.GetLanguage()) %>' />


</asp:Panel>

<asp:Panel ID="ShowPanel" runat="server" CssClass="votePanel">
   <b><asp:Label ID="ShowTitle" runat="server" EnableViewState="False"></asp:Label></b>
    <asp:Literal ID="ShowVoteList" runat="server" Text=""  EnableViewState="False"></asp:Literal>
</asp:Panel>

