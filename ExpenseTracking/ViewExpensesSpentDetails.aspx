<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="ViewExpensesSpentDetails.aspx.cs" Inherits="ViewExpensesSpentDetails" %>

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
            Font-Size="Small" CausesValidation="False">LinkButton</asp:LinkButton> </div>
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
                        Font-Italic="False" Font-Underline="False" CausesValidation="False">LinkButton</asp:LinkButton>
                    
                </td>
            </tr>
            
        </table>
        <br />
        Records [View by Dates]:<asp:Label ID="lblid_am" runat="server" Text="Label" 
        Visible="False"></asp:Label>
    <asp:Label ID="lblRecordsID" runat="server" 
        Text="Label" Visible="False"></asp:Label>
        <hr />
        <table>
            <tr>
                <td>Start Date: [mm/dd/yy]</td>
                <td>
                    <asp:TextBox ID="txtstartdate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor = "white" ControlToValidate = "txtstartdate" runat="server" ErrorMessage="* Enter start Date."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>End Date:[mm/dd/yy]</td>
                <td>
                    <asp:TextBox ID="txtenddate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor = "white" runat="server" ControlToValidate = "txtenddate" ErrorMessage="* Enter end Date."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnexecute" runat="server" onclick="btnexecute_Click" 
                        Text="View Details" />
                </td>
            </tr>
        </table>
        <fieldset></fieldset>
        <br />
        <table>
            <tr>
                <td>Total Amount:</td><td>
                <asp:Label ID="lblTotalAmount" runat="server" Font-Bold="True" 
                    Font-Size="X-Small" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        
            
                
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="recordsAmountID" Font-Size="Small">
                    <Columns>
                        <asp:BoundField DataField="amountspent" HeaderText="AmountSpent" />
                        <asp:BoundField DataField="dateRecorded" HeaderText="DateRecorded" />
                    </Columns>
                    <HeaderStyle BackColor="#2F4632" ForeColor="White" />
                </asp:GridView>
            </div>
            <hr />
           

        <br />
        <fieldset></fieldset>

     
</asp:Content>

