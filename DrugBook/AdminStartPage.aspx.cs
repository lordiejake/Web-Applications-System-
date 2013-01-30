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

public partial class AdminStartPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Article1.DataBind();      
            if (Session["USERS"] != null)
            {
                LinkButton lnkuser = Article1.ContentPlaceholder.Controls[0].FindControl("lnkuser") as LinkButton;
                lnkuser.Text = "HELLO [Admin]:   " + (string)(Session["USERS"]);
            }
            if (Session["USERS"] == null)
            {
                Response.Redirect("Default.aspx?");   
            }
        }
    }
    protected void lnkuser_Click(object sender, EventArgs e)
    {

    }
}