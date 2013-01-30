<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="AddDrugsSpecifications.aspx.cs" Inherits="AddDrugsSpecifications" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="AdministratorSidebar" Src="AdministratorSidebar.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Add Drug Specifications||
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


<artisteer:Block ID="MedicineName" Caption="[Drug Name]" runat="server"><ContentTemplate>

<ul>
    <li>
        <asp:LinkButton ID="lnkMedicines" runat="server"
            CausesValidation="False" onclick="lnkMedicines_Click">Sign In</asp:LinkButton></li>
</ul>
   </ContentTemplate></artisteer:Block>


<artisteer:Article ID="Article1"  Caption="Welcome - Drug guide book(Administrator)" runat="server"><ContentTemplate>
    <hr />
    
    <hr />
    <img class="art-article" src="images/medicines.jpg" alt="an image" style="border-style: none; border-color: inherit; border-width: 0; float:left; margin: 1em 1em 0 0; height: 70px; width: 121px;" />
    <p>The information at the this Web site is provided for educational and 
        informational purposes only and is not intended nor implied to be a substitute 
        for professional medical advice. You should verify the information contained 
        herein with a physician, and if you have a medical problem, you should consult 
        with a qualified medical care provider.</p>

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

<artisteer:Article ID="ArticleMedicine"  Caption="Welcome - Drug guide book(Administrator||Add Drug Class)" runat="server"><ContentTemplate>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
        TargetControlID="txtdrugclass" WatermarkCssClass="watermarked2" 
        WatermarkText="drugclass..">
    </asp:TextBoxWatermarkExtender>

    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Drug Class:" ForeColor="White"></asp:Label>
            </td><td>
            <asp:TextBox ID="txtdrugclass" runat="server" ValidationGroup="v1"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="v1" ControlToValidate="txtdrugclass" runat="server" 
                    ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td><td>
            <asp:Button ID="btnsave" runat="server" ValidationGroup="v1" Text="Save" onclick="btnsave_Click" />
            </td><td>
                <asp:Label ID="lblAdminID" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>

</ContentTemplate></artisteer:Article>



<div class="contents-margin">
    <div>
                        <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" 
                            Font-Underline="True" onclick="LinkButton6_Click" Visible="False" 
                            CausesValidation="False" ForeColor="White"></asp:LinkButton>
                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
                    <div>
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                            Width="638px" ShowFooter="True" ShowHeaderWhenEmpty="True">
                        <Columns>
                            <asp:BoundField DataField="drugClass" HeaderText="DrugClass:">
                                <HeaderStyle HorizontalAlign="Left" BackColor="#003300" />
                                <ItemStyle Font-Bold="False" ForeColor="White" Font-Underline="False" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    </div>
    </div>

<artisteer:Article ID="ArticleAvailableForms"  Caption="Welcome - Drug guide book(Administrator||Add Forms)" runat="server"><ContentTemplate>
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" 
        TargetControlID="txtforms" WatermarkCssClass="watermarked2" 
        WatermarkText="drugforms..">
    </asp:TextBoxWatermarkExtender>
   <table>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Forms:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtforms" runat="server" ValidationGroup="v2"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="v2" runat="server" 
                ErrorMessage="*" ControlToValidate="txtforms"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" 
                ValidationGroup="v2" />
        </td>
        <td></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8z" runat="server" Font-Bold="True" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click" 
                Visible="False">LinkButton</asp:LinkButton>
            <asp:Label ID="Label16z" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label13x" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
   </table>

</ContentTemplate></artisteer:Article>



<div class="contents-margin">
    
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
        Font-Bold="False" Width="638px" ShowFooter="True">
        <Columns>
            <asp:BoundField DataField="AvailableForms" HeaderText="Forms:">
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle Font-Bold="False" ForeColor="White" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    
</div>

<artisteer:Article ID="ArticleSsideEffects"  Caption="Welcome - Drug guide book(Administrator||Add Side Effects)" runat="server"><ContentTemplate>


</ContentTemplate></artisteer:Article>
<div class="contents-margin">
    
			    <div>
			        <div>
			            <table>
			                <tr>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" 
                                TargetControlID="TextBox2" WatermarkCssClass="watermarked2" 
                                    WatermarkText="side effects..">
                                </asp:TextBoxWatermarkExtender>
			                    <td>Add Side Effects:</td><td>
                                    <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="v3" Width="154px" 
                                        BackColor="White"></asp:TextBox>
			                    </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="v3" ControlToValidate="TextBox2" runat="server" 
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
			                </tr>
			                <tr>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
                                <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
			                    <td>
                                    <asp:Button ID="Button2" runat="server" ValidationGroup="v3" Text="Save" Width="68px" 
                                        onclick="Button2_Click" /> 
                                    <asp:Label ID="Label9" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
			                </tr>
			                <tr>
			                    <td>
                                    &nbsp;</td>
			                </tr>
			            </table>
			        </div>
			        
                    <div>
                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
                                        Font-Underline="True" onclick="LinkButton5_Click" Visible="False"></asp:LinkButton>
                                </div>
			            <div>
			                
			                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                Width="635px">
                                <Columns>
                                    <asp:BoundField DataField="SideEffects" HeaderText="Side Effects" />
                                </Columns>
                                <HeaderStyle 
                                    HorizontalAlign="Left" VerticalAlign="Top" />
                            </asp:GridView>
			                
			            </div>
			    </div></div>


<artisteer:Article ID="Article2"  Caption="Welcome - Drug guide book(Administrator||Add Dosage)" runat="server"><ContentTemplate>


</ContentTemplate></artisteer:Article>
<div class="contents-margin">
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" 
        TargetControlID="TextBox1" WatermarkCssClass="watermarked2" 
        WatermarkText="dosage..">
    </asp:TextBoxWatermarkExtender>
			        <div>
			            <table>
			                <tr>
			                    <td>Add Dosage:</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" ValidationGroup="v4" runat="server" Width="133px" 
                                        BackColor="White"></asp:TextBox>
			                    </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="v4" ControlToValidate="TextBox1" runat="server" 
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
			                </tr>
			                <tr>
			                    <td></td>
			                    <td>
                                    <asp:Button ID="ButtonSave" runat="server" Text="Save" ValidationGroup="v4" Width="66px" onclick="ButtonSave_Click" 
                                         /> 
			                        <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
			                    </td>
			                </tr>
			                <tr>
			                    <td>
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
			                </tr>
			            </table>
			        </div>
			        <div>
			                
			                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                Width="635px">
                                <Columns>
                                    <asp:BoundField DataField="Dosage" HeaderText="Dosage" >
                                        <ItemStyle ForeColor="White" />
                                    </asp:BoundField>
                                </Columns>
                                <HeaderStyle 
                                    HorizontalAlign="Left" VerticalAlign="Top" />
                            </asp:GridView>
			                
			        </div>
         </div>
</asp:Content>


