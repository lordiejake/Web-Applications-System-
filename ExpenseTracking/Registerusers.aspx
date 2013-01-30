<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Registerusers.aspx.cs" Inherits="Registerusers" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
<script runat="server">

    
</script>
<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Registerusers..
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

<artisteer:Article ID="Article1" Caption="Signup" runat="server"></artisteer:Article>




<artisteer:Block ID="HighlightsBlock" Caption="Registration" runat="server"><ContentTemplate><div></div>

   </ContentTemplate></artisteer:Block>
 <table>

    <tr>
        <td>
            Lastname:
        </td>
        <td>
            <asp:TextBox ID="txtlastname" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td>*</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtlastname" ForeColor="White" ErrorMessage="Lastname is Required!"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>
            Firstname:
        </td>
        <td>
            <asp:TextBox ID="txtfirstname" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td>*</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfirstname" ForeColor="White"  ErrorMessage="Firstname is Required!"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>
            MiddleName:
        </td>
        <td>
            <asp:TextBox ID="txtmiddlename" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td>*</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmiddlename" ForeColor="White" ErrorMessage="MiddleName is Required!"></asp:RequiredFieldValidator></td>
    </tr>
      
    <tr>
        <td>
            EmailAddress:
        </td>
        <td>
            <asp:TextBox ID="txtemailaddress" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td>*</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemailaddress" ForeColor="White" ErrorMessage="email address is Required!"></asp:RequiredFieldValidator></td>
    </tr>
    </tr>
    <tr>
        <td>
            User Name:
        </td>
        <td>
            <asp:TextBox ID="txtuser" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td>*</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtuser" ForeColor="White" ErrorMessage="UserName is Required!"></asp:RequiredFieldValidator></td>
    </tr>
      
    <tr>
        <td>
            Password:
        </td>
        <td>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
        </td>
        <td>*</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpassword" ForeColor="White" ErrorMessage="Password is Required!"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>
            
        </td>
        <td>
            <asp:Button ID="btnregister" runat="server" Text="Register" 
                onclick="btnregister_Click" />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:LinkButton ID="lnkLoginPage" runat="server" CausesValidation="False" 
                onclick="lnkLoginPage_Click" Visible="False">&gt;&gt;Successfully Registered.  [Login]</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lbldetectusername" runat="server" 
                Text="The username you entered was already used. " Visible="False"></asp:Label>
        </td>
    </tr>
</table>    
<br />
<hr />
    
 
</asp:Content>

