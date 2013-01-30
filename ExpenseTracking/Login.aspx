<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
<script runat="server">

    
</script>
<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Login..
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

<artisteer:Article ID="Article1" Caption="Login" runat="server"></artisteer:Article>



<artisteer:Block ID="HighlightsBlock" Caption="Users Login" runat="server"><ContentTemplate><div>
                
                  </div>
   </ContentTemplate></artisteer:Block>
    
    
     <table>

    <tr>
        <td>
            UserName:
        </td>
        <td>
            <asp:TextBox ID="txtusername" runat="server" 
                ontextchanged="txtusername_TextChanged" Width="153px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor = "White" ControlToValidate="txtusername" runat="server" ErrorMessage="* Enter username."></asp:RequiredFieldValidator>
        </td>
        
    </tr>
    <tr>
        <td>
            Password:
        </td>
        <td>
            
            <asp:TextBox ID="txtpssword" runat="server" 
                ontextchanged="txtpssword_TextChanged" TextMode="Password" Width="153px"></asp:TextBox>
                    
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor = "White" ControlToValidate="txtpssword" runat="server" ErrorMessage="* Enter password."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            
        </td>
        <td>
            <asp:Button ID="btnsave" runat="server" Text="Login" onclick="btnsave_Click" 
                Width="57px" />
        </td>
    </tr>
      
    <tr>
        <td>
            
        </td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                CausesValidation="False">* Register new User/s (click here)</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><asp:Label ID="lblMesssage" runat="server" 
                Text="* Username and Password did not match." Visible="False"></asp:Label><td>
    </tr>
</table>
<br />
<hr />
</asp:Content>

