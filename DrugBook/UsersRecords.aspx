<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="UsersRecords.aspx.cs" Inherits="UsersRecords" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="AdministratorSidebar" Src="AdministratorSidebar.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Records||User
</asp:Content>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <art:DefaultHeader ID="DefaultHeader" runat="server" />
</asp:Content>
<asp:Content ID="MenuContent" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <art:DefaultMenu ID="DefaultMenuContent" runat="server" />
</asp:Content>
<asp:Content ID="SideBar1" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <art:AdministratorSidebar ID="DefaultSidebar1Content" runat="server" />
</asp:Content>

<asp:Content ID="SheetContent" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">

<artisteer:Article ID="ArticleMedicine"  Caption="Welcome - Drug guide book(Administrator||[View]Registered Users)" runat="server"><ContentTemplate>

    <img class="art-article" src="images/medicines.jpg" alt="an image" style="border-style: none; border-color: inherit; border-width: 0; float:left; margin: 1em 1em 0 0; height: 70px; width: 121px;" />
    <p>The information at the athealth.com Web site is
     provided for educational and informational purposes only
      and is not intended nor implied to be a substitute for 
      professional medical advice. You should verify the information contained
       herein with a physician, and if you have a medical problem, you should 
       consult with a qualified medical care provider.</p>

       <p>Whether you are treating your own symptoms, those of a family member, or someone for whom you have been tasked with caring, it is important to have a basic knowledge of over-the-counter (OTC) medicine safety. Millions turn to OTC medicines when treating their family’s symptoms and it is important to do so safely.
When given as directed, OTC medicines help treat symptoms, but like all medicines, they have risks if misused.
No one likes to think about potential dangers, damages, and insult to our lives. But frightful things can-and sometimes do-happen.
 Injuries can result, dramatically altering our lives. To handle possible emergencies, it's important to be prepared. </p>
    <p>
</ContentTemplate></artisteer:Article>


<div class="contents-margin">
    <table>
        <tr>
            <td>Search Users:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</div>

<hr />

<div class="contents-margin">
    
    <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="userID" 
        onselectedindexchanging="GridView5_SelectedIndexChanging" PageSize="16" 
        Width="645px" onpageindexchanging="GridView5_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="Members" HeaderText="Members">
            <ItemStyle ForeColor="White" />
            </asp:BoundField>
            <asp:BoundField DataField="usercodename" HeaderText="UserName">
            <ItemStyle ForeColor="White" />
            </asp:BoundField>
            <asp:BoundField DataField="userpassword" HeaderText="Password">
            <ItemStyle ForeColor="White" />
            </asp:BoundField>
            <asp:CommandField ShowSelectButton="True">
            <ItemStyle Font-Bold="True" Font-Underline="True" ForeColor="White" />
            </asp:CommandField>
        </Columns>
        <HeaderStyle BackColor="#003300" ForeColor="White" HorizontalAlign="Left" 
            VerticalAlign="Top" />
    </asp:GridView>
    
    </div>

    


</asp:Content>

