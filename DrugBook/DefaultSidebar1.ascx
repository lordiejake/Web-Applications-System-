<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultSidebar1.ascx.cs" Inherits="Sidebar1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>

<artisteer:Block ID="loginblock" Caption="Log In [User]" runat="server">
        <ContentTemplate>
            <div>
            <ul>
                <li>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        CausesValidation="False">Log In [User]</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
                        CausesValidation="False">Name:</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                        Visible="False" CausesValidation="False">Sign Out [User]</asp:LinkButton>
                </li>
            </ul>
                
            </div>
        </ContentTemplate>

   </artisteer:Block>
<artisteer:Block ID="NewsletterBlock" Caption="Other Diseases" runat="server"><ContentTemplate>

<ul>

<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
     <a href="Diphtheria.aspx"><input class="art-button" type="button" name="search"  value=">>Diphtheria" style="width: 273px" /></a> 
    </span>
</div>
</li>

<li>
<div >
   <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
   <a href = "Influenza.aspx"><input 
        class="art-button" type="button" name="search"  value=">>Influenza" style="width: 273px" /></a>
    </span>

</div>
</li>

<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
    <a href = "Hookworm.aspx"><input 
        class="art-button" type="button" name="search" value=">>Hookworm" style="width: 273px" /></a>
    </span>

</div>
</li>

<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
    <a href = "Meningitis.aspx"><input 
        class="art-button" type="button" name="search" value=">>Meningitis" style="width: 273px" /></a>
    </span>

</div>
</li>

<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
    <a href = "Mumps.aspx"><input 
        class="art-button" type="button" name="search" value=">>Mumps" style="width: 273px" /></a>
    </span>

</div>
</li>

<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
    <a href = "Ringworm.aspx"><input 
        class="art-button" type="button" name="search" value=">>Ringworm" style="width: 273px" /></a>
    </span>

</div>
</li>
<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
    <a href = "Thrush.aspx"><input 
        class="art-button" type="button" name="search" value=">>Thrush" style="width: 273px" /></a>
    </span>

</div>
</li>

<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
    <a href = "Tubercolosis.aspx"><input 
        class="art-button" type="button" name="search" value=">>Tubercolosis" style="width: 273px" /></a>
    </span>

</div>
</li>

<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
    <a href = "Tetanus.aspx"><input 
        class="art-button" type="button" name="search" value=">>Tetanus" style="width: 273px" /></a>
    </span>

</div>
</li>

<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
    <a href = "Poliomyelitis.aspx"><input 
        class="art-button" type="button" name="search" value=">>Poliomyelitis" style="width: 273px" /></a>
    </span>

</div>
</li>
</ul>
   </ContentTemplate></artisteer:Block>

   <artisteer:Block ID="Block1" Caption="Administrator" runat="server">
       

        <ContentTemplate>
            <hr />
            
            <div>
                <asp:Login ID="Login1" runat="server" onauthenticate="Login1_Authenticate" 
                    onloginerror="Login1_LoginError">
                </asp:Login>
            </div>
            <div>
                <ul>
                    <li>
                        <asp:LinkButton ID="linkAdmin" runat="server" onclick="linkAdmin_Click" 
                            Visible="False"></asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="linkBack" runat="server" onclick="linkBack_Click" 
                            Visible="False">[admin] Start Page</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="linkSignOut" runat="server" onclick="linkSignOut_Click" 
                            Visible="False">[Admin] Sign Out</asp:LinkButton>
                    </li>
                </ul>
            </div>
            <hr />
        </ContentTemplate>


   </artisteer:Block>

<artisteer:Block ID="Block2" Caption="Articles" runat="server"><ContentTemplate><div>
                  <p><b>By: www.nwrcwa.org || </b><br />
                  Medisets are pill organizing containers which have the
days of the week and time of day on the lid of each
compartment. These are very good to help people
remember if they have taken their medicine. Putting
your medicine in a mediset at the beginning of each
week is a safe way to manage multiple medications or
medications which have many doses.<br />
 </p>
                  
                  <p><b>By: www.nwrcwa.org ||</b><br />
                  Although many people think of herbs as “natural
alternatives” to prescription medications, herbal remedies
themselves are often the active ingredients in
prescription medicines.<br />
                 </p>
                  </div>
   </ContentTemplate></artisteer:Block>


   
   <artisteer:Block ID="ContactInformationBlock" Caption="Contact Info" runat="server"><ContentTemplate><div>
<b>Company Co.</b><br />
    <hr />
      University of Southern Mindanao<br /> 
      Email(Gmail): <a href="mailto:duldulaojakes@gmail.com">
      duldulaojakes@gmail.com</a><br />
      Email(Yahoo mail): <a href="mailto:duldulaojake@yahoo.com">
      duldulaojake@yahoo.com</a><br />
      <br />
      Phone: +639073670490<br />
      Fax: (xxx) xxx-xxxx
      <hr />
</div>

   </ContentTemplate></artisteer:Block>
  


   

    

  

   
   

   
   


  


    



   

    

  

   
   

   
   


  


    
