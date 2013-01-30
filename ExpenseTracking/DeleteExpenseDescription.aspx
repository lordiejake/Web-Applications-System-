<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteExpenseDescription.aspx.cs" Inherits="DeleteExpenseDescription" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="LogoutMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
<script runat="server">

    
</script>
<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    EditExpenseDescription..
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



<artisteer:Block ID="HighlightsBlock" Caption="Expenses Descriptions >> Delete" runat="server"><ContentTemplate><div>
                
                  </div>
   </ContentTemplate></artisteer:Block>
    
    <div> 
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            CausesValidation="False" Font-Size="Small">LinkButton</asp:LinkButton> </div>
        <hr />
        <br />
        <br />
        <fieldset></fieldset>
        <br />
        <table>
            <tr>
                <td>Expenses Recorded:</td>
                <td>
                    <asp:Label ID="lbluserID_hiden" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbllatestExpenseId_Hiden" runat="server" Text="Label" 
                        Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblconnect" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                      <asp:Label ID="LblcodeDesc" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
                <fieldset></fieldset>
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#2F4632" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" AutoGenerateColumns="False" DataKeyNames="usersexpensesID" 
                GridLines="Horizontal" Width="330px" onrowcommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="usersexpensesID" HeaderText="ID" Visible="False" />
                    <asp:BoundField DataField="expensesdescription" 
                        HeaderText="ExpensesDescription" />
                    <asp:CommandField SelectText="&gt;&gt;Select" 
                        ShowSelectButton="True" HeaderText="DeleteExpenses_SpentRecords" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#2F4632" Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Left" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#336666" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        </div>
        <br />
        <fieldset></fieldset>

     
</asp:Content>

