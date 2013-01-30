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

public partial class ViewReportsofExpenses : System.Web.UI.Page
{
    SqlConnection conn = null;
    string usersid;
    double iid;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["USERS"] != null)
            {
                LinkButton1.Text = (string)(Session["USERS"]);
            }
            if (Session["USERS"] == null)
            {
                LinkButton1.Text = "----You must Login First----";
                Response.Redirect("Login.aspx");
            }
            if (Session["USERSid"] != null)
            {
                usersid = (string)(Session["USERSid"]);
                iid = double.Parse(usersid.ToString());
                lbluserID_hiden.Text = iid.ToString();
            }

            //PostExpenses();
            PostViewReports_spent();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "----You must Login First----")
        {
            Response.Redirect("Login.aspx");
        }
        if (LinkButton1.Text != "----You must Login First----")
        {
            Session["USERS"] = null;
            Session["USERSid"] = null;
            Response.Redirect("Login.aspx");
        }
    }

    void PostViewReports_spent()
    {
        try
        {
            GridView1.DataSource = ClassDataManager.view_User_Expenses_Reports(iid);
            GridView1.DataBind();
        }
        catch (Exception)
        {
            throw;
            // Response.Redirect("Login.aspx");
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());

        if (e.CommandName.Equals("Select"))
        {
            int Getindex = int.Parse(GridView1.DataKeys[index].Value.ToString());
            if (Getindex > 0)
            {
                Response.Redirect("ViewExpensesSpentDetails.aspx?expenseCode=" + int.Parse(GridView1.DataKeys[index].Value.ToString()));
            }
            if (Getindex == 0)
            {

            }
        }
    }
}