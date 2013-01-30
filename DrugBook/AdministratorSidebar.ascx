<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdministratorSidebar.ascx.cs" Inherits="AdministratorSidebar" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>


<artisteer:Block ID="SignoutBlock" Caption="[Administrator]" runat="server"><ContentTemplate>

<ul>
    <li>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            CausesValidation="False">Sign In</asp:LinkButton></li>
        <li>
            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                CausesValidation="False">[Admin] Sign Out</asp:LinkButton>
        </li>
</ul>
   </ContentTemplate></artisteer:Block>

<artisteer:Block ID="Block1" Caption="Start-Modify Data" runat="server"><ContentTemplate>

<ul>

<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
     <a href="AdminStartPage.aspx?"><input class="art-button" type="button" name="search"  value="Home [Start Page]" style="width: 273px" /></a> 
    </span>
</div>
</li>

<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
     <a href="AddMedicine.aspx?"><input class="art-button" type="button" name="search"  value="Add Medicines(Drugs)" style="width: 273px" /></a> 
    </span>
</div>
</li>

<li>
<div >
   <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
   <a href = "AddIllness.aspx?"><input 
        class="art-button" type="button" name="search"  value="Add Diseases(Illness)" style="width: 273px" /></a>
    </span>

</div>
</li>

<li>
<div>
    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
    <a href = "UsersRecords.aspx?"><input 
        class="art-button" type="button" name="search" value="Manage members(Registered Users)" style="width: 273px" /></a>
    </span>

</div>
</ul>
   </ContentTemplate></artisteer:Block>


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