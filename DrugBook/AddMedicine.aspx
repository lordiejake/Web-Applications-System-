<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="AddMedicine.aspx.cs" Inherits="AddMedicine" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="AdministratorSidebar" Src="AdministratorSidebar.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Add Medicine||
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

<artisteer:Article ID="ArticleMedicine"  Caption="Welcome - Drug guide book(Administrator||Add Medicine)" runat="server"><ContentTemplate>
    
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
        TargetControlID="txtdrug" WatermarkCssClass="watermarked" 
        WatermarkText="drugname..">
    </asp:TextBoxWatermarkExtender>

     <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" 
        TargetControlID="txtgeneric" WatermarkCssClass="watermarked" 
        WatermarkText="genericname..">
    </asp:TextBoxWatermarkExtender>

    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" 
        TargetControlID="txtbrand" WatermarkCssClass="watermarked"
        WatermarkText="brandname..">
    </asp:TextBoxWatermarkExtender>
   
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Drug Name:" ForeColor="White"></asp:Label>
            </td><td>
            <asp:TextBox ID="txtdrug" runat="server" Width="150px"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtdrug" runat="server" 
                    ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Generic Name:" ForeColor="White"></asp:Label>
            </td><td>
            <asp:TextBox ID="txtgeneric" runat="server" Width="150px"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtgeneric" runat="server" 
                    ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Brand Name:" ForeColor="White"></asp:Label>
            </td><td>
            <asp:TextBox ID="txtbrand" runat="server" Width="150px"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtbrand" runat="server" 
                    ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td><td>
            <asp:Button ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" />
            </td><td>
                <asp:Label ID="lblAdminID" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>

</ContentTemplate></artisteer:Article>

<div class="contents-margin">
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="DrugID" ForeColor="White" 
        onrowcommand="GridView5_RowCommand" Width="645px" AllowPaging="True" 
        onpageindexchanging="GridView5_PageIndexChanging" ShowFooter="True">
        <Columns>
            <asp:BoundField DataField="DrugID" HeaderText="Code" Visible="False" />
            <asp:BoundField DataField="DrugName" HeaderText="DrugName">
            <ItemStyle Font-Underline="False" ForeColor="White" Font-Italic="False" />
            </asp:BoundField>
            <asp:BoundField DataField="GenericName" HeaderText="GenericName" >
            <ItemStyle Font-Underline="False" />
            </asp:BoundField>
            <asp:BoundField DataField="BrandName" HeaderText="BrandName" >
            <ItemStyle Font-Underline="False" />
            </asp:BoundField>
            <asp:CommandField SelectText="Manage" ShowSelectButton="True">
            <ItemStyle Font-Bold="True" Font-Underline="True" ForeColor="White" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#003300" />
        <HeaderStyle BackColor="#003300" 
            HorizontalAlign="Left" VerticalAlign="Top" />
    </asp:GridView>
    </div>

<artisteer:Article ID="Article1"  Caption="Welcome - Drug guide book(Administrator)" runat="server"><ContentTemplate>
    <hr />
    
    <hr />
    <img class="art-article" src="images/medicines.jpg" alt="an image" style="border-style: none; border-color: inherit; border-width: 0; float:left; margin: 1em 1em 0 0; height: 70px; width: 121px;" />
    <p>The information at the this Web site is
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

    
    	<span class="art-button-wrapper">
    		<span class="l"> </span>
    		<span class="r"> </span>
    		<a class="art-button" href="javascript:void(0)">Read more...</a>
    	</span>
    </p>


    </ContentTemplate></artisteer:Article>

    


</asp:Content>

