<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="LogoutMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
<script runat="server">

    
</script>
<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    EditProfile..
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

<artisteer:Article ID="Article1" Caption="Edit Profile" runat="server"></artisteer:Article>




<artisteer:Block ID="HighlightsBlock" Caption="Edit here" runat="server"><ContentTemplate><div></div>

   </ContentTemplate></artisteer:Block>
   <div> 
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            CausesValidation="False" Font-Size="Small">LinkButton</asp:LinkButton> </div>
        <hr />
        <br />
        <br />
 <table>

    <tr>
        <td>
            Lastname:
        </td>
        <td>
            <asp:TextBox ID="txtlastname" runat="server" Width="147px"></asp:TextBox>
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
            <asp:TextBox ID="txtfirstname" runat="server" Width="147px"></asp:TextBox>
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
            <asp:TextBox ID="txtmiddlename" runat="server" Width="147px"></asp:TextBox>
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
            <asp:TextBox ID="txtemailaddress" runat="server" Width="147px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            User Name:
        </td>
        <td>
            <asp:TextBox ID="txtuser" runat="server" Width="147px"></asp:TextBox>
        </td>
        <td>*</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtuser" ForeColor="White" ErrorMessage="UserName is Required!"></asp:RequiredFieldValidator></td>
    </tr>
      
    
    <tr>
        <td>
            
        </td>
        <td>
            <asp:Button ID="btnregister" runat="server" Text="Save Primary Details" 
                onclick="btnregister_Click" />
        </td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="." Visible="false"></asp:Label></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lbldetectusername" runat="server" 
                Text="The username you entered was already used. " Visible="False"></asp:Label>
        </td>
    </tr>
</table>    

<hr />
Edit Password:
<br />
<table>
    <tr>
        <td>
           Re-type Password:
        </td>
        <td>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>*</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" ></asp:Label>
            </td>
    </tr>
    <tr>
        <td>
            New Password:
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>*</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>    
            <asp:Button ID="Button1" runat="server" Text="Save Password" 
                onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:LinkButton ID="Linkpasswordchange" runat="server" 
                onclick="Linkpasswordchange_Click">Successfully updated. Go back to frontpage.</asp:LinkButton></td>
    </tr>
</table>
    
 
</asp:Content>


