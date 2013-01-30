using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
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
        }
        //if (Session["USERSid"] != null)
        //{
        //    LinkButton1.Text = (string)(Session["USERSid"]);
        //}
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
    protected void linkprofile_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditProfile.aspx?");
    }
    protected void linkexpenses_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExpensesDescription.aspx?");
    }
    protected void linkdelete_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditExpenseDescription.aspx");
    }
    protected void lnkView_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewReportsofExpenses.aspx");
    }
    protected void lnkdeleted_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteExpenseDescription.aspx");
    }
}