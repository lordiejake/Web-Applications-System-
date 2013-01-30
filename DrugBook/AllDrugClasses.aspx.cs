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

public partial class AllDrugClasses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PostDrugClasses();
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        PostDrugClassesSearch();
    }

    void PostDrugClasses()
    {
        GridView2.DataSource = ClassDataManager.AllDrugClasses();
        GridView2.DataBind();
    }

    void PostDrugClassesSearch()
    {
        GridView2.DataSource = ClassDataManager.AllDrugClassesSearch(TextBox1.Text);
        GridView2.DataBind();
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName.Equals("Select"))
        {
            Response.Redirect("ClassCategory.aspx?DrugClassID=" + int.Parse(GridView2.DataKeys[index].Value.ToString()));
        }
    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataSource = ClassDataManager.AllDrugClasses();
        GridView2.DataBind();
    }
    protected void Save_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(4000);
        PostDrugClassesSearch();
    }
}