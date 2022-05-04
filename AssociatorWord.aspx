<%@ Page Language="C#" MasterPageFile="~/Master/Default/Page.master" AutoEventWireup="true" CodeBehind="AssociatorWord.aspx.cs" Inherits="WangQi.ERP.Web.AssociatorWord" Title="ÎÞ±êÌâÒ³" %>
<%@ Register TagPrefix="uc" TagName="MemberControlMenu" Src="~/Controls/MemberControlMenu.ascx"%>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

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
        <div class="tm"> <span class="tt">
              <asp:Literal ID="MyLeaver" meta:resourcekey="MyLeaver" runat="server"></asp:Literal>
            </span></div>
        <div class="pack">
            <div class="ml"></div>
            <div class="mr"></div>
            <div class="mm f14">
    
        <asp:Repeater ID="MessageListRepeater" runat="server" EnableViewState="False" OnItemCreated="MessageListRepeater_ItemCreated" OnItemDataBound="MessageListRepeater_ItemDataBound">
            <ItemTemplate>
                <div class="listbor">
                    <asp:Table ID="MessageTable" runat="server" CellSpacing="5">
                        <asp:TableRow ID="TableRow1" runat="server">
                            <asp:TableCell ID="TableCell1" runat="server">
                                <asp:Literal ID="MessageTitleLiteral" meta:resourcekey="MessageTitleLiteral" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell2" runat="server">
                                <asp:Literal ID="MessageTitle" runat="server" Text='<%# Bind("Title") %>'></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow ID="TableRow2" runat="server">
                            <asp:TableCell ID="TableCell3" runat="server">
                                <asp:Literal ID="Field0Literal" runat="server" Text='<%# Bind("FieldName0") %>'></asp:Literal>
                                <asp:Literal ID="Colon" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell4" runat="server">
                                <asp:Literal ID="Field0" runat="server"  Text='<%# Bind("Field0") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow3" runat="server">
                            <asp:TableCell ID="TableCell5" runat="server">
                                <asp:Literal ID="Field1Literal" runat="server"  Text='<%# Bind("FieldName1") %>'></asp:Literal>
                                <asp:Literal ID="Literal1" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell6" runat="server">
                                <asp:Literal ID="Field1" runat="server" Text='<%# Bind("Field1") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow4" runat="server">
                            <asp:TableCell ID="TableCell7" runat="server">
                                <asp:Literal ID="Field2Literal" runat="server"  Text='<%# Bind("FieldName2") %>'></asp:Literal>
                                <asp:Literal ID="Literal2" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell8" runat="server">
                                <asp:Literal ID="Field2" runat="server"  Text='<%# Bind("Field2") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow5" runat="server">
                            <asp:TableCell ID="TableCell9" runat="server">
                                <asp:Literal ID="Field3Literal" runat="server"  Text='<%# Bind("FieldName3") %>'></asp:Literal>
                                <asp:Literal ID="Literal3" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell10" runat="server">
                                <asp:Literal ID="Field3" runat="server"  Text='<%# Bind("Field3") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow6" runat="server">
                            <asp:TableCell ID="TableCell11" runat="server">
                                <asp:Literal ID="Field4Literal" runat="server"  Text='<%# Bind("FieldName4") %>'></asp:Literal>
                                <asp:Literal ID="Literal4" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell12" runat="server">
                                <asp:Literal ID="Field4" runat="server"  Text='<%# Bind("Field4") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow7" runat="server">
                            <asp:TableCell ID="TableCell13" runat="server">
                                <asp:Literal ID="Field5Literal" runat="server"  Text='<%# Bind("FieldName5") %>'></asp:Literal>
                                <asp:Literal ID="Literal5" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell14" runat="server">
                                <asp:Literal ID="Field5" runat="server"  Text='<%# Bind("Field5") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow8" runat="server">
                            <asp:TableCell ID="TableCell15" runat="server">
                                <asp:Literal ID="Field6Literal" runat="server"  Text='<%# Bind("FieldName6") %>'></asp:Literal>
                                <asp:Literal ID="Literal6" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell16" runat="server">
                                <asp:Literal ID="Field6" runat="server"  Text='<%# Bind("Field6") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow9" runat="server">
                            <asp:TableCell ID="TableCell17" runat="server">
                                <asp:Literal ID="Field7Literal" runat="server"  Text='<%# Bind("FieldName7") %>'></asp:Literal>
                                <asp:Literal ID="Literal7" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell18" runat="server">
                                <asp:Literal ID="Field7" runat="server"  Text='<%# Bind("Field7") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow10" runat="server">
                            <asp:TableCell ID="TableCell19" runat="server">
                                <asp:Literal ID="Field8Literal" runat="server"  Text='<%# Bind("FieldName8") %>'></asp:Literal>
                                <asp:Literal ID="Literal8" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell20" runat="server">
                                <asp:Literal ID="Field8" runat="server"  Text='<%# Bind("Field8") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow11" runat="server">
                            <asp:TableCell ID="TableCell21" runat="server">
                                <asp:Literal ID="Field9Literal" runat="server"  Text='<%# Bind("FieldName9") %>'></asp:Literal>
                                <asp:Literal ID="Literal9" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell22" runat="server">
                                <asp:Literal ID="Field9" runat="server"  Text='<%# Bind("Field9") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow12" runat="server">
                            <asp:TableCell ID="TableCell23" runat="server">
                                <asp:Literal ID="Field10Literal" runat="server"  Text='<%# Bind("FieldName10") %>'></asp:Literal>
                                <asp:Literal ID="Literal10" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell24" runat="server">
                                <asp:Literal ID="Field10" runat="server"  Text='<%# Bind("Field10") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow13" runat="server">
                            <asp:TableCell ID="TableCell25" runat="server">
                                <asp:Literal ID="Field11Literal" runat="server"  Text='<%# Bind("FieldName11") %>'></asp:Literal>
                                <asp:Literal ID="Literal11" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell26" runat="server">
                                <asp:Literal ID="Field11" runat="server"  Text='<%# Bind("Field11") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow14" runat="server">
                            <asp:TableCell ID="TableCell27" runat="server">
                                <asp:Literal ID="Field12Literal" runat="server"  Text='<%# Bind("FieldName12") %>'></asp:Literal>
                                <asp:Literal ID="Literal12" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell28" runat="server">
                                <asp:Literal ID="Field12" runat="server"  Text='<%# Bind("Field12") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow15" runat="server">
                            <asp:TableCell ID="TableCell29" runat="server">
                                <asp:Literal ID="Field13Literal" runat="server"  Text='<%# Bind("FieldName13") %>'></asp:Literal>
                                <asp:Literal ID="Literal13" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell30" runat="server">
                                <asp:Literal ID="Field13" runat="server"  Text='<%# Bind("Field13") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
						
                        <asp:TableRow ID="TableRow16" runat="server">
                            <asp:TableCell ID="TableCell31" runat="server">
                                <asp:Literal ID="Field14Literal" runat="server"  Text='<%# Bind("FieldName14") %>'></asp:Literal>
                                <asp:Literal ID="Literal14" meta:resourcekey="Colon" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell32" runat="server">
                                <asp:Literal ID="Field14" runat="server"  Text='<%# Bind("Field14") %>'></asp:Literal>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow ID="TableRow17" runat="server">
                            <asp:TableCell ID="TableCell33" runat="server">
                                <asp:Literal ID="MessageContentLiteral" meta:resourcekey="MessageContentLiteral" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell34" runat="server">
                                <asp:Literal ID="MessageContent" runat="server"  Text='<%# Bind("MessageContent") %>'></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="TableRow34" runat="server">
                            <asp:TableCell ID="TableCell37" runat="server">
                                <asp:Literal ID="AnswerLiteral" meta:resourcekey="AnswerLiteral" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell38" CssClass="highlight" runat="server">
                                <asp:Literal ID="Answer" runat="server"  Text='<%# Bind("Answer") %>'></asp:Literal>
                                <asp:HiddenField ID="FieldNumHiddenField" Value='<%# Bind("FieldNum") %>' runat="server" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        
        <div class="pager">
            <webdiyer:AspNetPager ID="MessageListPager" runat="server" AlwaysShow="True" UrlPaging="true" EnableUrlRewriting="false" OnPageChanged="MessageListPager_PageChanged" ShowBoxThreshold="20" EnableViewState="False" InputBoxClass="pagerInputBox" OnPageChanging="MessageListPager_PageChanging" SubmitButtonClass="pagerSubmitButton" CurrentPageButtonClass="current" FirstPageText="<%$ Resources:WebResourcesGlobal, FirstPageText %>" LastPageText="<%$ Resources:WebResourcesGlobal, LastPageText %>" NextPageText="<%$ Resources:WebResourcesGlobal, NextPageText %>" PrevPageText="<%$ Resources:WebResourcesGlobal, PrevPageText %>">
            </webdiyer:AspNetPager>
        </div>
        
      </div>
        </div>
        <div class="bl"></div>
        <div class="br"></div>
        <div class="bm"></div>
    </div>
</asp:Content>


