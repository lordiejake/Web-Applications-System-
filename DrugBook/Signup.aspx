<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Registration||
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


<artisteer:Article ID="Article1"  Caption="Welcome - Drug guide book(User Sign up)" runat="server"><ContentTemplate>
    
    </ContentTemplate></artisteer:Article>

        <div class="contents-margin">
         <hr />
        </div>
        <div>
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                            </asp:ToolkitScriptManager>
                            <asp:PasswordStrength ID="PasswordStrength1" runat="server" 
                TargetControlID="TextBox9"
                DisplayPosition="RightSide"  
                StrengthIndicatorType="Text"  
                PreferredPasswordLength="10"  
                PrefixText="Strength:"  
                TextCssClass="TextIndicator_TextBox1"  
                MinimumNumericCharacters="3"  
                MinimumSymbolCharacters="1"  
                RequiresUpperAndLowerCaseCharacters="false"  
                TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
                TextStrengthDescriptionStyles="cssClass1;cssClass2;cssClass3;cssClass4;cssClass5"
                CalculationWeightings="50;15;15;20" 
                >
                            </asp:PasswordStrength>
        </div>
        <div class="contents-margin">
			    
			        <table>
                        <tr>
                            <td>
                            </td>
                            <td>
			                     <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                     onclick="LinkButton2_Click" Visible="False" BackColor="#003300" 
                                    ForeColor="White">[Successfully save: Proceed to login(Click here)]</asp:LinkButton>
                            </td>
                        </tr>
			            <tr>
			                <td>
                                <asp:Label ID="Label3" runat="server" Text="Last name:" Font-Bold="True" 
                                    ForeColor="White"></asp:Label></td><td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="311px"></asp:TextBox>
                            </td>
                        
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                            </td>
			            </tr>
			            <tr>
			                <td>
                                <asp:Label ID="Label4" runat="server" Text="Firstname:" Font-Bold="True" 
                                    ForeColor="White"></asp:Label></td><td>
                                <asp:TextBox ID="TextBox2" runat="server" Width="311px"></asp:TextBox>
                            </td>
                            
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="*" ControlToValidate="TextBox2" 
                                    Font-Underline="False"></asp:RequiredFieldValidator>
			                </td>
			            </tr>
			            <tr>
			                <td>
                                <asp:Label ID="Label5" runat="server" Text="Middlename:" Font-Bold="True" 
                                    ForeColor="White"></asp:Label></td><td>
                                <asp:TextBox ID="TextBox3" runat="server" Width="311px"></asp:TextBox>
                            </td>
                          
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ErrorMessage="*" ControlToValidate="TextBox3" 
                                    Font-Underline="False"></asp:RequiredFieldValidator>
			                </td>
			            </tr>
			            <tr>
			                <td>
                                <asp:Label ID="Label6" runat="server" Text="age:" Font-Bold="True" 
                                    ForeColor="White"></asp:Label></td><td>
                                <asp:TextBox ID="TextBox4" runat="server" Width="91px"></asp:TextBox>
                            </td>
                          
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ErrorMessage="*" ControlToValidate="TextBox4" 
                                    Font-Underline="False"></asp:RequiredFieldValidator>
			                </td>
			            </tr>
			            <tr>
			                <td>
                                <asp:Label ID="Label7" runat="server" Text="Address:" Font-Bold="True" 
                                    ForeColor="White"></asp:Label></td><td>
                                <asp:TextBox ID="TextBox5" runat="server" Width="311px" Height="34px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ErrorMessage="*" ControlToValidate="TextBox5" 
                                    Font-Underline="False"></asp:RequiredFieldValidator>
			                </td>
			            </tr>
			            <tr>
			                <td>
                                <asp:Label ID="Label8" runat="server" Text="Contact number:" Font-Bold="True" 
                                    ForeColor="White"></asp:Label></td><td>
                                <asp:TextBox ID="TextBox6" runat="server" Width="311px"></asp:TextBox>
                            </td>
                            
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ErrorMessage="*" ControlToValidate="TextBox6" 
                                    Font-Underline="False"></asp:RequiredFieldValidator>
			                </td>
			            </tr>
			            <tr>
			                <td>
                                <asp:Label ID="Label9" runat="server" Text="email address(Optional):" Font-Bold="True" 
                                    ForeColor="White"></asp:Label></td><td>
                                <asp:TextBox ID="TextBox7" runat="server" Width="311px"></asp:TextBox>
                            </td>
                            
                            <td>&nbsp;</td>
			            </tr>
			            <tr>
			                <td>
                                <asp:Label ID="Label10" runat="server" Text="Username:" Font-Bold="True" 
                                    ForeColor="White"></asp:Label></td><td>
                                <asp:TextBox ID="TextBox8" runat="server" Width="311px"></asp:TextBox>
                            </td>
                            
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ErrorMessage="*" ControlToValidate="TextBox8" 
                                    Font-Underline="False"></asp:RequiredFieldValidator>
			                </td>
			            </tr>
			            <tr>
                            
			                <td>
                                <asp:Label ID="Label11" runat="server" Text="Password:" Font-Bold="True" 
                                    ForeColor="White"></asp:Label></td><td>
                                <asp:TextBox ID="TextBox9" runat="server" Width="311px" TextMode="Password"></asp:TextBox>
                            </td>
                            
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ErrorMessage="*" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
			                </td>
			            </tr>
			            <tr>
			                <td></td>
			                <td>
			                   
			                    <asp:Button ID="Button2" runat="server" Text="[Sign up]" Width="164px" 
                                    onclick="Button2_Click" />
			                   
			                </td>
			            </tr>
			            <tr>
			                <td>
			                </td>
			                 <td>
			                     &nbsp;</td>
			            </tr>
			            <tr>
			                <td></td><td>&nbsp;</td>
			            </tr>
			        </table>
			</div>


            <div>
            </div>

         <artisteer:Article ID="Article3" Caption="Login:" runat="server"><ContentTemplate>

         <p>
    		<span class="art-button-wrapper">
    			<span class="l"> </span>
    			<span class="r"> </span>
    			<a class="art-button" href="UserLogin.aspx?">Sign in..</a>
    		</span>
    	</p>

      <blockquote>

            <p>
                &#8220;Go back to login page..&#8221;
                <br />
                -Blockquote
            </p>
        </blockquote>
        
        <br />


        
      
    	
           </ContentTemplate></artisteer:Article>
    
</asp:Content>


