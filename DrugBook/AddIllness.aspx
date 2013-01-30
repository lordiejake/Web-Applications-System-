<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="AddIllness.aspx.cs" Inherits="AddIllness" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="AdministratorSidebar" Src="AdministratorSidebar.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Add Illness||
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
    <p>The information at this Web site is
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

<artisteer:Article ID="Article1"  Caption="Welcome - Drug guide book(Administrator||Add Illness)" runat="server"><ContentTemplate>

</ContentTemplate></artisteer:Article>

<div class="contents-margin">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
        TargetControlID="TextBox2" WatermarkCssClass="watermarked2" 
        WatermarkText="add illness..">
    </asp:TextBoxWatermarkExtender>

     <table>
					            <tr>
					                <td>
                                        Illness/Disease:</td>
                                    <td>
                                        
                                        <asp:TextBox ID="TextBox2" ValidationGroup="v1" runat="server" Width="171px"></asp:TextBox>
                                        
                                    </td>
                                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="v1" runat="server"  controltovalidate="TextBox2"  ErrorMessage="*"></asp:RequiredFieldValidator></td>
					            </tr>
					            
					            <tr>
					                <td></td><td>
                                        <asp:Button ID="Button2" runat="server" ValidationGroup="v1" Text="Save" Width="49px" 
                                            onclick="Button1_Click1" /></td>
					            </tr>
					            <tr>
					                <td></td><td><a href="#">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Visible="False"></asp:Label>
				                    <asp:Label ID="lblAdminID" runat="server" Text="lblAdminID" Visible="False"></asp:Label>
				</a>
                                    </td>
					            </tr>
					            
					        </table>
</div>


<artisteer:Article ID="Article2"  Caption="Welcome - Drug guide book(Administrator||Manage Illness [Data])" runat="server"><ContentTemplate>

</ContentTemplate></artisteer:Article>

<div class="contents-margin">
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" 
        TargetControlID="TextBox1" WatermarkCssClass="watermarked2" 
        WatermarkText="search illness..">
    </asp:TextBoxWatermarkExtender>
    <table>
        <tr>
            <td class="style1">Search Illness/Disease</td>
            <td>
                <asp:TextBox ID="TextBox1" ValidationGroup="v2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" ValidationGroup="v2" Text="Search" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    <hr />
</div>

<div class="contents-margin">
    
    <a href="#">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="IllnessID" HorizontalAlign="Left" 
        onrowcommand="GridView2_RowCommand" ShowFooter="True" Width="723px">
        <RowStyle BorderStyle="none" />
        <Columns>
            <asp:BoundField DataField="IllnessName" HeaderText="Illness">
            <ItemStyle Font-Bold="True" Font-Overline="False" Font-Underline="False" 
                ForeColor="White" Width="480px" />
            </asp:BoundField>
            <asp:CommandField ShowSelectButton="True">
            <ItemStyle ForeColor="White" />
            </asp:CommandField>
        </Columns>
        <HeaderStyle BackColor="#003300" BorderStyle="Groove" Font-Underline="False" 
            ForeColor="White" HorizontalAlign="Left" />
    </asp:GridView>
    </a>
    
    </div>

    


</asp:Content>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ScriptIncludePlaceHolder">
    <script type="text/javascript" src="<%= ResolveUrl("~/script.js") %>"></script>
    <style type="text/css">
        .style1
        {
            width: 136px;
        }
    </style>
</asp:Content>
