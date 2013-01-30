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

public partial class AllDrugs : System.Web.UI.Page
{
    double select = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PostMedicine();     
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        PostMedicineSearch();
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

    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName.Equals("Select"))
        {
            Response.Redirect("DrugSpecifications.aspx?DrugCode=" + int.Parse(GridView5.DataKeys[index].Value.ToString()));
        }
    }
    protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
            GridView5.PageIndex = e.NewPageIndex;
            GridView5.DataSource = ClassDataManager.AllDrugz();
            GridView5.DataBind();
    }
    protected void Save_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(4000);
        PostMedicineSearch();
    }
}