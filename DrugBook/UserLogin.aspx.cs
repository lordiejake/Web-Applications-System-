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

public partial class UserLogin : System.Web.UI.Page
{
    string usersLogin = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Block1.DataBind();
        if (!this.IsPostBack)
            ViewState["LoginErrors"] = 0;
    }
   
    private bool YourValidationFunction(string UserName, string Password)
    {

        bool boolReturnValue = false;
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        SqlCommand command = new SqlCommand("SELECT * FROM tbl_UserClient WHERE usercodename = '" + UserName + "'AND userpassword= '" + Password + "'", conn);
        SqlDataReader Dr;
        conn.Open();
        Dr = command.ExecuteReader();
        while (Dr.Read())
        {
            if ((UserName == Dr["usercodename"].ToString()) & (Password == Dr["userpassword"].ToString()))
            {
                boolReturnValue = true;
                usersLogin = Dr[1].ToString() + ", " + Dr[2].ToString() + " " + Dr[3].ToString();
                Session["clients"] = usersLogin.ToString();
            }
            Dr.Close();
            return boolReturnValue;
        }
        return boolReturnValue;
    }


    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        

        Login log = Block1.ContentPlaceholder.Controls[0].FindControl("Login1") as Login;


        if (YourValidationFunction(log.UserName, log.Password))
        {
            // e.Authenticated = true;
            log.Visible = false;
            Response.Redirect("Default.aspx?");
        }
        else
        {
            e.Authenticated = false;
        }
    }
    protected void Login1_LoginError(object sender, EventArgs e)
    {
        Login log = Block1.ContentPlaceholder.Controls[0].FindControl("Login1") as Login;

        if (ViewState["LoginErrors"] == null)
            ViewState["LoginErrors"] = 0;

        int ErrorCount = (int)ViewState["LoginErrors"] + 1;
        ViewState["LoginErrors"] = ErrorCount;

        if ((ErrorCount > 3) && (log.PasswordRecoveryUrl!= string.Empty))
            Response.Redirect(log.PasswordRecoveryUrl);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx?");
    }
}