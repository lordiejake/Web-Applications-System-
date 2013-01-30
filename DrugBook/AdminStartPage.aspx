<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="AdminStartPage.aspx.cs" Inherits="AdminStartPage" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="AdministratorSidebar" Src="AdministratorSidebar.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    [Admin] Start Page||
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

<artisteer:Article ID="Article1"  Caption="Welcome - Drug guide book(Administrator)" runat="server"><ContentTemplate>
    <hr />
    
        <asp:LinkButton ID="lnkuser" runat="server" Font-Bold="True" 
            Font-Underline="True" ForeColor="White" onclick="lnkuser_Click"></asp:LinkButton>
    
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
     <p>Increasing numbers of medicines are available to
us every day and it is important to manage them correctly
if they are to be effective. An average, active
older adult is taking three to five medicines every day.
Studies show that older adults are often unaware of
why they take specific drugs, the name of the drugs
they take, possible side effects, or the dose for specific
medications. Having these simple pieces of information
on a wallet card and with you at all times could
save your life. Senior Information & Assistance has
cards that you can use.</p>
    <p>Drug abuse is a disorder that is characterized by a destructive pattern of using a substance that leads to significant problems or distress.
Drug addiction is a disease that is characterized by a destructive pattern of drug abuse that leads to significant problems involving tolerance to or withdrawal from the substance,
 as well as other problems use of the substance can cause for the sufferer.
Drug abuse and addiction are unfortunately quite common, affecting 7% and more than 2% of people at some point in their lives, respectively.
Dual diagnosis refers to the presence of both a drug-abuse or dependence issue in addition to a serious mental-health problem in an individual.
Virtually any substance whose ingestion can result in a euphoric ("high") feeling can be abused.
Inhalants like household cleaners are some of the most commonly abused substances.
While the specific physical and psychological effects of drug abuse and addiction tend to vary based on the particular substance involved,
 the general effects of abuse or addiction to any drug can be devastating.</p>

 <p>Dosage Form (DF) is defined as the physical form of a dose of a chemical compound used as a drug or medication 
        intended for administration or consumption. Common dosage forms include pill, tablet, or capsule, drink or syrup,
         aerosol or inhaler, liquid injection, pure powder or solid crystal (e.g., via oral ingestion or freebase smoking),
          and natural or herbal form such as plant or food of sorts, among many others. The route of administration (ROA)
           for drug delivery is dependent on the dosage form of the substance.</p>


    </ContentTemplate></artisteer:Article>

    


</asp:Content>
