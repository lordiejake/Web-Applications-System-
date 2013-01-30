<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteRecordSpent.aspx.cs" Inherits="DeleteRecordSpent" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="LogoutMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
<script runat="server">

    
</script>
<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    ExpenseRecorded..
</asp:Content>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <art:DefaultHeader ID="DefaultHeader" runat="server" />
</asp:Content>
<asp:Content ID="MenuContent" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <art:DefaultMenu ID="DefaultMenuContent" runat="server" />
</asp:Content>
<asp:Content ID="SideBar1" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <art:DefaultSidebar1 ID="DefaultSidebar1Content" runat="server" />
</asp:Content>

<asp:Content ID="SheetContent" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">

<artisteer:Article ID="Article1" Caption="User's Expenses Tracking System" runat="server"></artisteer:Article>



<artisteer:Block ID="HighlightsBlock" Caption="Records of Expenses" runat="server"><ContentTemplate><div>
                
                  </div>
   </ContentTemplate></artisteer:Block>
    
    <div> 
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            Font-Size="Small">LinkButton</asp:LinkButton> </div>
        <hr />
        <br />
        <br />
        <table>
            <tr>
                <td>
                    Category(Tag): 
                </td>
                <td>
                    
                    <asp:LinkButton ID="lnktagcategory" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Underline="True">LinkButton</asp:LinkButton>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Delete: (Select from the records below):
                </td>
                <td>
                    
                    <asp:TextBox ID="TextBox1" runat="server" Width="159px" Enabled="False"></asp:TextBox>
                    
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Are you sure you want to delete the record?" 
                        Visible="False"></asp:Label>
                    </td>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server" Visible="False" 
                        onclick="LinkButton2_Click">Yes</asp:LinkButton>
                    </td>
                    <td>
                    <asp:Label ID="Label2" runat="server" Text="or" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton3" runat="server" Visible="False" 
                            onclick="LinkButton3_Click">No</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnsave" runat="server" Text="Delete" onclick="btnsave_Click" 
                        Width="53px" />
                </td>
            </tr>
        </table>
        <br />
        Records:<asp:Label ID="lblid_am" runat="server" Text="Label" 
        Visible="False"></asp:Label><asp:Label ID="lblRecordsID" runat="server" 
        Text="Label" Visible="False"></asp:Label>
        <hr />
        <fieldset></fieldset>
        <br />
        
        <div>Select from the records:<br />
    </div>
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="recordsAmountID" onrowcommand="GridView1_RowCommand" 
                    Font-Size="Small">
                    <Columns>
                        <asp:BoundField DataField="recordsAmountID" HeaderText="ID" Visible="False" />
                        <asp:BoundField DataField="amountspent" HeaderText="AmountSpent" />
                        <asp:BoundField DataField="dateRecorded" HeaderText="DateRecorded" />
                        <asp:CommandField HeaderText="DeleteAmount" SelectText="&gt;&gt;Select" 
                            ShowSelectButton="True" />
                    </Columns>
                    <HeaderStyle BackColor="#2F4632" ForeColor="White" />
                </asp:GridView>
            </div>
            <div>
                <table> 
                <tr>    
                    <td>
                   
                <asp:Button ID="btndeleteall" runat="server" Text="Delete All" 
                    onclick="btndeleteall_Click" />
                     </td>
                     <td>
                    <asp:Label ID="Label3" runat="server" Text="Are you sure you want to delete all the record/s?" 
                        Visible="False"></asp:Label>
                    </td>
                     <td>
                         <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
                             Visible="False">Yes</asp:LinkButton>
                    </td>
                     <td>
                    <asp:Label ID="Label4" runat="server" Text="or" 
                        Visible="False"></asp:Label>
                    </td>
                     <td>
                         <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
                             Visible="False">No</asp:LinkButton>
                    </td>
                </tr>
                </table>
    </div>
            <hr />

        <br />
        <fieldset></fieldset>

     
</asp:Content>

