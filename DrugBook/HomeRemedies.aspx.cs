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

public partial class HomeRemedies : System.Web.UI.Page
{
    double illnessc;
    protected void Page_Load(object sender, EventArgs e)
    {
        MedicineName.DataBind();
        if (!IsPostBack)
        {
            if (Request.QueryString["IllnessCode"] != null)
                 illnessc = double.Parse(Request.QueryString["IllnessCode"]);
            AdminStatus.Text = illnessc.ToString();

            SampleIllness();
            PostSymptoms();
            PostTreatment();
            PostMedicine();

            if (Session["clients"] == null)
            {
                GridView5.Visible = false;
                Label3.Visible = false;
                TextBox1.Visible = false;
                Button1.Visible = false;
                logins.Visible = true;
                
            }
            if (Session["clients"] != null)
            {
                logins.Visible = false;
                GridView5.Visible = true;
                Label3.Visible = true;
                TextBox1.Visible = true;
                Button1.Visible = true;
            }
        }
    }

    void PostSymptoms()
    {
        GridView3.DataSource = ClassDataManager.LoadSymptoms(illnessc);
        GridView3.DataBind();
    }

    void PostTreatment()
    {
        GridView8.DataSource = ClassDataManager.LoadTreatments(illnessc);
        GridView8.DataBind();
    }

    void PostMedicine()
    {
        GridView5.DataSource = ClassDataManager.LoadMedicines(illnessc);
        GridView5.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        PostMedicineSearchings();
    }

    void PostMedicineSearchings()
    {
        GridView5.DataSource = ClassDataManager.LoadMedicinesSearchings(double.Parse(AdminStatus.Text), TextBox1.Text);
        GridView5.DataBind();
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
    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName.Equals("Select"))
        {
            Response.Redirect("DrugSpecification.aspx?IllnessCode=" + AdminStatus.Text + "&DrugCode=" + int.Parse(GridView5.DataKeys[index].Value.ToString()));
        }
        
    }
    protected void lnkMedicines_Click(object sender, EventArgs e)
    {

    }
    protected void logins_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(5000);
        Session["clients"] = null;
        Response.Redirect("UserLogin.aspx?");
    }
}