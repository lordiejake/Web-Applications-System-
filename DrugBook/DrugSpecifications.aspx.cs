using System;
using System.Collections;
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

public partial class DrugSpecifications : System.Web.UI.Page
{
    double illnessc;
    double drugi;
    SqlConnection conn = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        MedicineName.DataBind();
        if (!IsPostBack)
        {
            try
            {
                if (Request.QueryString["DrugCode"] != null)
                drugi = double.Parse(Request.QueryString["DrugCode"]);
            }
            catch (Exception)
            {
                Response.Redirect("Default.aspx?");
            }

            Medicine();
            PostEffects();
            PostDrugClass();
            Availableformz();
            PostWarnings();
            PostDoosage();
           
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

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
    void PostWarnings()
    {
        GridView7.DataSource = ClassDataManager.Warnings(drugi);
        GridView7.DataBind();
    }
    void Availableformz()
    {
        GridView6.DataSource = ClassDataManager.FormsAvailable(drugi);
        GridView6.DataBind();
    }
    void PostDrugClass()
    {
        GridView5.DataSource = ClassDataManager.LoadDrugClass(drugi);
        GridView5.DataBind();
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

                    LinkButton lnkMedicine = MedicineName.ContentPlaceholder.Controls[0].FindControl("lnkMedicines") as LinkButton;
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

    protected void Chart1_Load(object sender, EventArgs e)
    {

    }
    protected void lnkMedicines_Click(object sender, EventArgs e)
    {

    }
}