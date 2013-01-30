<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="ExpenseRecorded.aspx.cs" Inherits="ExpenseRecorded" %>

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
                    Enter an amount(Spent): Pesos:
                </td>
                <td>
                    
                    <asp:TextBox ID="TextBox1" runat="server" Width="159px"></asp:TextBox>
                    
                </td>
                <td>
                    <asp:Label ID="lblinvalid" runat="server" Text="Invalid Amount" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server" Visible="False" 
                        onclick="LinkButton2_Click">Successfully Recorded. Click here to view the Record/s</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" 
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
        
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="recordsAmountID" onrowcommand="GridView1_RowCommand" 
                    Font-Size="Small">
                    <Columns>
                        <asp:BoundField DataField="recordsAmountID" HeaderText="ID" Visible="False" />
                        <asp:BoundField DataField="amountspent" HeaderText="AmountSpent" />
                        <asp:BoundField DataField="dateRecorded" HeaderText="DateRecorded" />
                        <asp:CommandField HeaderText="EditAmount" SelectText="&gt;&gt;Edit" 
                            ShowSelectButton="True" />
                    </Columns>
                    <HeaderStyle BackColor="#2F4632" ForeColor="White" />
                </asp:GridView>
            </div>
            <hr />
            <table>
                <tr>
                <td>
                    Edit the amount(Spent): Pesos:
                </td>
                <td>
                    
                    <asp:TextBox ID="txtupdatedtextbox" runat="server" Width="159px" 
                        Enabled="False"></asp:TextBox>
                    
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Invalid Amount" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton3" runat="server" Visible="False" 
                        onclick="LinkButton3_Click">Successfully Recorded. Click here to view the Record/s</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="txtupdate" runat="server" Enabled="False" Text="Update" 
                        onclick="txtupdate_Click" />
                </td>
            </tr>
            </table>

        <br />
        <fieldset></fieldset>

     
</asp:Content>

