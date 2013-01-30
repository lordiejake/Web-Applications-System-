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

public partial class ClassCategory : System.Web.UI.Page
{
    double drugClassId;
    protected void Page_Load(object sender, EventArgs e)
    {
        MedicineName.DataBind();
        if (!IsPostBack)
        {
            if (Request.QueryString["DrugClassID"] != null)
                drugClassId = double.Parse(Request.QueryString["DrugClassID"]);
            Label1.Text = drugClassId.ToString();

            drug_byClasses();
            Medicine();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());

        if (e.CommandName.Equals("Select"))
        {
            Response.Redirect("DrugToDrugsClassesInformation.aspx?DrugCode=" + int.Parse(GridView5.DataKeys[index].Value.ToString()) + "&DrugClassID=" + double.Parse(Label1.Text));
        }
    }
    void drug_byClasses()
    {
        GridView5.DataSource = ClassDataManager.DrugClass_Medecina(drugClassId);
        GridView5.DataBind();
    }

    protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView5.PageIndex = e.NewPageIndex;
        GridView5.DataSource = ClassDataManager.DrugClass_Medecina(drugClassId);
        GridView5.DataBind();
    }

    void Medicine()//drug class now..
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand command = new SqlCommand("SELECT * FROM tbl_DrugClass WHERE DrugclassID = '" + drugClassId + "'", conn);
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



    protected void lnkMedicines_Click(object sender, EventArgs e)
    {

    }
    protected void Save_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(4000);
    }
}