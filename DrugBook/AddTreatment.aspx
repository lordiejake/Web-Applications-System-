<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="AddTreatment.aspx.cs" Inherits="AddTreatment" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="AdministratorSidebar" Src="AdministratorSidebar.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Add Treatment||
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

<artisteer:Block ID="MedicineName" Caption="[Illness/Disease]" runat="server"><ContentTemplate>

<ul>
    <li>
        <asp:LinkButton ID="lnkMedicines" runat="server"
            CausesValidation="False" onclick="lnkMedicines_Click">Sign In</asp:LinkButton></li>
</ul>
   </ContentTemplate></artisteer:Block>

				                    <asp:Label ID="lblAdminID" runat="server" Text="lblAdminID" Visible="False"></asp:Label>

<artisteer:Article ID="Article1"  Caption="Welcome - Drug guide book(Administrator)" runat="server"><ContentTemplate>
    <hr />
    
    <hr />
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

    
    	<span class="art-button-wrapper">
    		<span class="l"> </span>
    		<span class="r"> </span>
    		<a class="art-button" href="javascript:void(0)">Read more...</a>
    	</span>
    </p>

    
    </ContentTemplate></artisteer:Article>

    <artisteer:Article ID="Article2"  Caption="[Symptoms]" runat="server"><ContentTemplate>
    </ContentTemplate></artisteer:Article>
    <div class="contents-margin">     
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
            TargetControlID="TextBox1" WatermarkCssClass="watermarked2" 
            WatermarkText="add symptoms">
        </asp:TextBoxWatermarkExtender>
             <div>
                <table>
                    <tr>
                        <td><asp:Label ID="Label8" runat="server" Text="Add Symptoms:"></asp:Label></td><td>
                            <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="v1" Width="122px" BackColor="White"></asp:TextBox></td>
                            <td><asp:Button ID="Button1" runat="server" ValidationGroup="v1" Text="Save" Width="65px" 
                                    onclick="Button1_Click" /></td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="v1" ControlToValidate="Textbox1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label11z" runat="server" Text="Label" Visible="False"></asp:Label>
                            <asp:Label ID="Label6z" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton4" runat="server" Visible="False" 
                                Font-Bold="True" Font-Underline="True" onclick="LinkButton4_Click"></asp:LinkButton>
                            <asp:Label ID="Label10z" runat="server" Text="Label" Visible="False"></asp:Label>
                            <asp:Label ID="Label7z" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
             </div>
			    <div>
			        
			            <div>
			                
			                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                Width="723px">
                                <Columns>
                                    <asp:BoundField DataField="Symptoms" HeaderText="Symptoms" />
                                </Columns>
                                <HeaderStyle BackColor="#003300" 
                                    HorizontalAlign="Left" VerticalAlign="Top" />
                            </asp:GridView>
			                
			            </div>
			        
			    </div>
         </div>

         <artisteer:Article ID="Article3"  Caption="[Home Remedies]" runat="server"><ContentTemplate>
    </ContentTemplate></artisteer:Article>

<div class="contents-margin">
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" 
        TargetControlID="TextBox2" WatermarkCssClass="watermarked2" 
        WatermarkText="add remedies..">
    </asp:TextBoxWatermarkExtender>
     <div>  
                <table>
                    <tr>
                        <td><asp:Label ID="Label9" runat="server" Text="Add Home Remedies:"></asp:Label></td><td>
                            <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="v2" Width="140px" BackColor="White"></asp:TextBox></td>
                            <td><asp:Button ID="Button2" ValidationGroup="v2" runat="server" Text="Save" Width="65px" 
                                    onclick="Button2_Click" /></td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="v2" ControlToValidate="Textbox2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            
                            <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click"></asp:LinkButton>
                            
                        </td>
                    </tr>
                </table>
             </div>
			<div>
			    
			        <div>
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                            Width="723px">
                            <Columns>
                                <asp:BoundField DataField="TreatmentDescription" HeaderText="Treatment" >
                                <HeaderStyle Font-Underline="False" />
                                <ItemStyle Font-Underline="False" ForeColor="White" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#003300" ForeColor="White" 
                                HorizontalAlign="Left" VerticalAlign="Top" />
                        </asp:GridView>
			        </div>
			    
			</div>
    </div>


    <artisteer:Article ID="Article4"  Caption="[Medicines]" runat="server"><ContentTemplate>
    </ContentTemplate></artisteer:Article>

    <div class="contents-margin">
    <div>
        <asp:Button ID="Button3" runat="server" Text="Add more medicine.." 
            onclick="Button3_Click" />
    </div>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="DrugID" Width="723px">
            <Columns>
                <asp:BoundField DataField="DrugName" HeaderText="DrugName">
                <ItemStyle Font-Underline="True" ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="GenericName" HeaderText="GenericName" />
                <asp:BoundField DataField="BrandName" HeaderText="BrandName" />
                <asp:CommandField ShowSelectButton="True">
                <ItemStyle Font-Bold="True" Font-Underline="True" ForeColor="White" />
                </asp:CommandField>
            </Columns>
            <HeaderStyle BackColor="#003300" 
                HorizontalAlign="Left" VerticalAlign="Top" />
        </asp:GridView>
    </div>



</asp:Content>
