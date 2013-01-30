<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="ExpensesDescription.aspx.cs" Inherits="ExpensesDescription" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="LogoutMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
<script runat="server">

    
</script>
<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    ExpensesDescription..
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



<artisteer:Block ID="HighlightsBlock" Caption="Expenses Descriptions >> Add" runat="server"><ContentTemplate><div>
                
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
                    <td>Add Expenses Description (ex. Food, etc.): 
                    </td>
                    <td>
                        <asp:TextBox ID="txtExpensesDescription" runat="server" Width="339px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate = "txtExpensesDescription" ForeColor="White" runat="server" ErrorMessage="Required!"></asp:RequiredFieldValidator></td>
                        <td>
                            <asp:LinkButton ID="Linksave" runat="server" CausesValidation="False" 
                                onclick="Linksave_Click" Visible="False">successsfully saved.View now</asp:LinkButton></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td> <asp:Button ID="btnsave" runat="server" Text="Save" Width="93px" 
                                        onclick="btnsave_Click" />
                            </td>
                            <td> 
                                <asp:Label ID="Label1" runat="server" 
                                    Text="The Description  was already on your record/s." Visible="False"></asp:Label> </td>
                             </tr>
                        </table>

                    </td>
                </tr>
            </table>
        <br />
        <hr />
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
            </tr>
        </table>
        <hr />
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" AutoGenerateColumns="False" DataKeyNames="usersexpensesID" 
                GridLines="Horizontal" Width="314px" onrowcommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="usersexpensesID" HeaderText="ID" Visible="False" />
                    <asp:BoundField DataField="expensesdescription" 
                        HeaderText="ExpensesDescription" />
                    <asp:CommandField SelectText="&gt;&gt;Modify Expenses(Select)" 
                        ShowSelectButton="True" HeaderText="Click here" />
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

