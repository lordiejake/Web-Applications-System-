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


public partial class UsersRecords : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Administration"] == null)
            {
                Response.Redirect("Default.aspx?");
            }
            PostAllMembers();
        }
    }

    void PostAllMembers()
    {
        GridView5.DataSource = ClassDataManager.UserMembers();
        GridView5.DataBind();
    }
    void SearchPostAllMembers()
    {
        GridView5.DataSource = ClassDataManager.UserMembersSearch(TextBox1.Text);
        GridView5.DataBind();
    }
    protected void GridView5_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

        
    }
    protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView5.PageIndex = e.NewPageIndex;
        GridView5.DataSource = ClassDataManager.UserMembers();
        GridView5.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SearchPostAllMembers();
    }
}