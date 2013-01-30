using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class AddDrugsSpecifications : System.Web.UI.Page
{
    double illnessc;
    double drugi;
    SqlConnection conn = null;
    double forn = 0;
    double sidem = 0;
    double drclass = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        ArticleAvailableForms.DataBind();
        ArticleMedicine.DataBind();
        MedicineName.DataBind();
        
        if (!IsPostBack)
        {
            
            Label lblAdminID = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("lblAdminID") as Label;

            if (Request.QueryString["DrugCode"] != null)
                    drugi = double.Parse(Request.QueryString["DrugCode"]);
            Label4.Text = drugi.ToString();//drug code

            if (Session["Administration"] != null)
            {
                lblAdminID.Text = (string)(Session["Administration"]);
            }
            if (Session["Administration"] == null)
            {
                Response.Redirect("Default.aspx?");
            }

            PostDrugClass();
            Availableformz();
            PostEffects();
            PostDoosage();
            Medicine();
           
        }
    }

    void Jkl()
    {
        try
        {
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT  TOP (1) DrugclassID  FROM  tbl_DrugClass ORDER BY DrugclassID DESC", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Label3.Text = dr[0].ToString();
                }
            }

        }
        catch (Exception)
        {
            throw;
        }
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        SearchDrugClassFirst();
        if (drclass == 0)
        {

        }
        if (drclass == 1)
        {

            try
            {

                TextBox txtdrugclass = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("txtdrugclass") as TextBox;
                    ClassDataManager v = new ClassDataManager();
                    v.AddDRUG_CLASSNOW(txtdrugclass.Text, 1);
                    Jkl();
                    Label lblAdminID = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("lblAdminID") as Label;
                    v.AdddrugsCLASSES_Transactions(double.Parse(Label3.Text), double.Parse(Label4.Text), double.Parse(lblAdminID.Text));//1 is the admin
                    Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
            }
            catch (Exception)
            {
                Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
            }
        }

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        try
        {
            classx();
            Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
        }
        catch (Exception)
        {
            Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
        }
    }

    void classx()
    {
        try
        {
            TextBox txtdrugclass = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("txtdrugclass") as TextBox;
                ClassDataManager v = new ClassDataManager();
                Label lblAdminID = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("lblAdminID") as Label;
                v.AdddrugsCLASSES_Transactions(double.Parse(Label2.Text), double.Parse(Label4.Text), double.Parse(lblAdminID.Text));
                Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
        }
        catch (Exception)
        {
            Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
        }
    }

    void Medicine()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand command = new SqlCommand("SELECT * FROM tbl_Drugs WHERE DrugID = '" + drugi + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    LinkButton lnkMedicine =  MedicineName.ContentPlaceholder.Controls[0].FindControl("lnkMedicines") as LinkButton;
                    lnkMedicine.Text = dr[1].ToString();

                }
            }

        }
        catch (Exception)
        {

        }
        finally
        {
            conn.Close();
        }
    }

    void PostDrugClass()
    {
        GridView5.DataSource = ClassDataManager.LoadDrugClass(drugi);
        GridView5.DataBind();
    }
    void Availableformz()
    {
        GridView6.DataSource = ClassDataManager.FormsAvailable(drugi);
        GridView6.DataBind();
    }
    void PostEffects()
    {
        GridView3.DataSource = ClassDataManager.LoadSideEffects(drugi);
        GridView3.DataBind();
    }
    void PostDoosage()
    {
        GridView4.DataSource = ClassDataManager.LoadDosage(drugi);
        GridView4.DataBind();
    }
    void SearchDrugClassFirst()
    {
        try
        {
            TextBox txtdrugclass = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("txtdrugclass") as TextBox;
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT * FROM tbl_DrugClass WHERE drugClass = '" + txtdrugclass.Text + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    drclass = 0;
                    LinkButton6.Visible = true;
                    Label2.Text = dr[0].ToString();
                    LinkButton6.Text = "[" + txtdrugclass.Text + "]" + " is already on database. Proceed anyway";
                }
            }
            else
            {
                LinkButton6.Visible = false;
                drclass = 1;
            }

        }
        catch (Exception)
        {
            //AdminStatus.Text = "failed to login";
        }

    }

    void SearchformsFirst()
    {
        try
        {
            TextBox txtforms = ArticleAvailableForms.ContentPlaceholder.Controls[0].FindControl("txtforms") as TextBox;
            Label Label16z = ArticleAvailableForms.ContentPlaceholder.Controls[0].FindControl("Label16z") as Label;

            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT * FROM tbl_AvailableForms WHERE AvailableForms = '" + txtforms.Text + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    forn = 0;
                    LinkButton LinkButton4 = ArticleAvailableForms.ContentPlaceholder.Controls[0].FindControl("LinkButton7") as LinkButton;
                    LinkButton4.Visible = true;
                    Label16z.Text = dr[0].ToString();
                    LinkButton4.Text = "[" + txtforms.Text + "]" + " is already on database. Proceed anyway";
                }
            }
            else
            {
                LinkButton LinkButton4 = ArticleAvailableForms.ContentPlaceholder.Controls[0].FindControl("LinkButton7") as LinkButton;
                LinkButton4.Visible = false;
                forn = 1;

            }

        }
        catch (Exception)
        {
            //AdminStatus.Text = "failed to login";
        }
    }

    void H()
    {
        try
        {
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT  TOP (1) FormsID  FROM  tbl_AvailableForms   ORDER BY FormsID DESC", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Label Label13x = ArticleAvailableForms.ContentPlaceholder.Controls[0].FindControl("Label13x") as Label;
                    Label13x.Text = dr[0].ToString();
                }
            }

        }
        catch (Exception)
        {
            throw;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        H();
        SearchformsFirst();
        if (forn == 0)
        {
            LinkButton LinkButton4 = ArticleAvailableForms.ContentPlaceholder.Controls[0].FindControl("LinkButton7") as LinkButton;
            LinkButton4.Visible = true;
        }

        if (forn == 1)
        {
            try
            {
                Label lblAdminID = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("lblAdminID") as Label;
                TextBox txtforms = ArticleAvailableForms.ContentPlaceholder.Controls[0].FindControl("txtforms") as TextBox;
                ClassDataManager v = new ClassDataManager();
                v.AddForms(txtforms.Text, double.Parse(lblAdminID.Text));
                H();
                Label Label13x = ArticleAvailableForms.ContentPlaceholder.Controls[0].FindControl("Label13x") as Label;
                v.AddFormsdrugs(double.Parse(Label13x.Text), double.Parse(Label4.Text), double.Parse(lblAdminID.Text));
                Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));

            }
            catch (Exception)
            {
                Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
            }
        }

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        try
        {
                ClassDataManager v = new ClassDataManager();
                Label lblAdminID = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("lblAdminID") as Label;
                Label Label16z = ArticleAvailableForms.ContentPlaceholder.Controls[0].FindControl("Label16z") as Label;
                v.AddFormsdrugs(double.Parse(Label16z.Text), double.Parse(Label4.Text), double.Parse(lblAdminID.Text));
                Response.Redirect("AddDrugSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
        }
        catch (Exception)
        {
            Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
        }
    }

    void I()
    {
        try
        {
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT  TOP (1) SideEffectsID  FROM  tbl_SideEffects   ORDER BY SideEffectsID DESC", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Label11.Text = dr[0].ToString();
                }
            }

        }
        catch (Exception)
        {
            throw;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SearchSideEffectsfirst();
        if (sidem == 0)
        {

        }
        if (sidem == 1)
        {


            try
            {
                Label lblAdminID = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("lblAdminID") as Label;
                    ClassDataManager v = new ClassDataManager();
                    v.AddDrugsideEFFECTS("•" + TextBox2.Text, double.Parse(lblAdminID.Text));
                    I();
                    v.AdddrugsEffects_Transactions(double.Parse(Label11.Text), double.Parse(Label4.Text), double.Parse(lblAdminID.Text));
                    Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
            }
            catch (Exception)
            {
                Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
            }
        }

    }

    void SearchSideEffectsfirst()
    {
        try
        {
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT * FROM tbl_Sideeffects WHERE SideEffects = '" + "•" + TextBox2.Text + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    sidem = 0;
                    Label10.Text = dr[0].ToString();//17 dati
                    LinkButton5.Visible = true;
                    LinkButton5.Text = "[" + TextBox2.Text + "]" + " is already on database. Proceed anyway";
                }
            }
            else
            {
                LinkButton5.Visible = false;
                sidem = 1;

            }

        }
        catch (Exception)
        {
            //AdminStatus.Text = "failed to login";
        }

    }

    void ko()
    {
        try
        {
                ClassDataManager v = new ClassDataManager();
                Label lblAdminID = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("lblAdminID") as Label;
                v.AdddrugsEffects_Transactions(double.Parse(Label10.Text), double.Parse(Label4.Text), double.Parse(lblAdminID.Text));
                Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
        }
        catch (Exception)
        {
            Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
        }
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        try
        {
            ko();
            Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
        }
        catch (Exception)
        {
            Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
        }
    }
    void J()
    {
        try
        {
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT  TOP (1) DosageID  FROM  tbl_Dosage ORDER BY DosageID DESC", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Label12.Text = dr[0].ToString();
                }
            }

        }
        catch (Exception)
        {
            throw;
        }
    }

    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        try
        {
               Label lblAdminID = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("lblAdminID") as Label;
                ClassDataManager v = new ClassDataManager();
                v.AddDrugDosage("•" + TextBox1.Text, double.Parse(lblAdminID.Text));
                J();
                v.AdddrugsDosage_Transactions(double.Parse(Label12.Text), double.Parse(Label4.Text), double.Parse(lblAdminID.Text));
                Response.Redirect("AddDrugsSpecifications.aspx?&DrugCode=" + double.Parse(Label4.Text));
        }
        catch (Exception)
        {
            Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + double.Parse(Label4.Text));
        }
    }
    protected void lnkMedicines_Click(object sender, EventArgs e)
    {

    }
}