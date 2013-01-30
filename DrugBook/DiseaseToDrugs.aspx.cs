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

public partial class DiseaseToDrugs : System.Web.UI.Page
{
    double Proceed = 0;
    double tret = 0;

    SqlConnection conn = null;
    double illnessc;
    double AdminID;

    protected void Page_Load(object sender, EventArgs e)
    {
        MedicineName.DataBind();
        if (!IsPostBack)
        {
            if (Request.QueryString["IllnessCode"] != null)
                illnessc = double.Parse(Request.QueryString["IllnessCode"]);
            Label6z.Text = illnessc.ToString();

            if (Session["Administration"] != null)
            {
                lblAdminID.Text = (string)(Session["Administration"]);
            }
            if (Session["Administration"] == null)
            {
                Response.Redirect("Default.aspx?");
            }

            PostMedicine();
            SampleIllness();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        PostMedicineSearch();
    }
    protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView5.PageIndex = e.NewPageIndex;
        GridView5.DataSource = ClassDataManager.AllDrugz();
        GridView5.DataBind();
    }
    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());

        if (e.CommandName.Equals("Select"))
        {
            LinkButton6.Visible = true;
            int dex = int.Parse(GridView5.DataKeys[index].Value.ToString());
            Label9z.Text = dex.ToString();
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            try
            {
                SqlCommand command = new SqlCommand("SELECT * FROM tbl_DrugIllness WHERE DrugID = '" + dex + "' AND IllnessID = '" + double.Parse(Label6z.Text) + "'", conn);
                conn.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                        LinkButton6.Text = "This drug was already Recorded in this illness!";

                    }
                }
                else
                {
                    LinkButton6.Text = "[Click here] Save and Continue.";
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
    }

    void PostMedicine()
    {
        GridView5.DataSource = ClassDataManager.AllDrugz();
        GridView5.DataBind();
    }

    void PostMedicineSearch()
    {
        GridView5.DataSource = ClassDataManager.AllDrugzSearch(TextBox1.Text);
        GridView5.DataBind();
    }
    protected void lnkMedicines_Click(object sender, EventArgs e)
    {

    }

    void SampleIllness()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand command = new SqlCommand("SELECT * FROM tbl_Illness WHERE IllnessID = '" + illnessc + "'", conn);
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
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        try
        {
            if (LinkButton6.Text == "[Click here] Save and Continue.")
            {
                ClassDataManager c = new ClassDataManager();
                c.AddDrugs_OILLNESS(double.Parse(Label9z.Text), double.Parse(lblAdminID.Text), double.Parse(Label6z.Text));
                LinkButton6.Visible = false;
            }
            if (LinkButton6.Text != "[Click here] Save and Continue.")
            {
                LinkButton6.Visible = false;
            }
        }
        catch (Exception)
        {

            throw;
        }
    }
}