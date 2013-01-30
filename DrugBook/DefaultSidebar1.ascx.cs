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

public partial class Sidebar1 : System.Web.UI.UserControl
{
    SqlConnection conn = null;
    string Admin_Signed = "";
    string adminID= "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Block1.DataBind();
        loginblock.DataBind();
        try
        {
            
          //  Block3.DataBind();
            if (!this.IsPostBack)
            {
                ViewState["LoginErrors"] = 0;
                if (Session["clients"] != null)
                {
                    LinkButton lnkuser2 = loginblock.ContentPlaceholder.Controls[0].FindControl("LinkButton2") as LinkButton;
                    LinkButton lnkuser = loginblock.ContentPlaceholder.Controls[0].FindControl("LinkButton3") as LinkButton;
                    LinkButton lnkuser1 = loginblock.ContentPlaceholder.Controls[0].FindControl("LinkButton1") as LinkButton;
                    lnkuser.Text = "HELLO:   " + (string)(Session["clients"]);
                    lnkuser2.Visible = true;
                    lnkuser1.Visible = false;
                    lnkuser.Visible = true;

                    
                }
                else 
                {

                    LinkButton lnkuser1 = loginblock.ContentPlaceholder.Controls[0].FindControl("LinkButton1") as LinkButton;
                    LinkButton lnkuser2 = loginblock.ContentPlaceholder.Controls[0].FindControl("LinkButton2") as LinkButton;
                    LinkButton lnkuser = loginblock.ContentPlaceholder.Controls[0].FindControl("LinkButton3") as LinkButton;
                    lnkuser2.Visible = false;
                    lnkuser1.Visible = true;
                    lnkuser.Visible = false;
                }

                if (Session["USERS"] != null)
                {
                    LinkButton lnkuser1 = Block1.ContentPlaceholder.Controls[0].FindControl("linkAdmin") as LinkButton;
                    LinkButton lnkuser2 = Block1.ContentPlaceholder.Controls[0].FindControl("linkBack") as LinkButton;
                    LinkButton lnkuser3 = Block1.ContentPlaceholder.Controls[0].FindControl("linkSignOut") as LinkButton;
                    lnkuser1.Text = "HELLO [Admin]:   " + (string)(Session["USERS"]);
                    lnkuser1.Visible = true;
                    lnkuser2.Visible = true;
                    lnkuser3.Visible = true; 

                    Login log = Block1.ContentPlaceholder.Controls[0].FindControl("Login1") as Login;
                    log.Visible = false;
                }
                if (Session["USERS"] == null)
                {
                    LinkButton lnkuser1 = Block1.ContentPlaceholder.Controls[0].FindControl("linkAdmin") as LinkButton;
                    LinkButton lnkuser2 = Block1.ContentPlaceholder.Controls[0].FindControl("linkBack") as LinkButton;
                    LinkButton lnkuser3 = Block1.ContentPlaceholder.Controls[0].FindControl("linkSignOut") as LinkButton;
                    lnkuser1.Visible = false;
                    lnkuser2.Visible = false;
                    lnkuser3.Visible = false; 

                    Login log = Block1.ContentPlaceholder.Controls[0].FindControl("Login1") as Login;
                    log.Visible = true;
                }
            }
        }
        catch (Exception)
        {
            //Response.Redirect("Default.aspx");
        }
        
        
        
    }

    private bool YourValidationFunction(string UserName, string Password)
    {

        bool boolReturnValue = false;
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        SqlCommand command = new SqlCommand("SELECT * FROM tbl_Administrator WHERE Adminuser ='" + UserName + "' AND AdminPassword ='" + Password + "'", conn);
        SqlDataReader Dr;
        conn.Open();
        Dr = command.ExecuteReader();
        while (Dr.Read())
        {
            if ((UserName == Dr["Adminuser"].ToString()) & (Password == Dr["AdminPassword"].ToString()))
            {
                boolReturnValue = true;
                Admin_Signed = Dr[1].ToString() + ", " + Dr[2].ToString() + " " + Dr[3].ToString();
                adminID = Dr[0].ToString();
                Session["USERS"] = Admin_Signed;
                Session["Administration"] = adminID;

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
            log.Visible = false;
            Response.Redirect("AdminStartPage.aspx?");
        }
        else
        {
            e.Authenticated = false;
        }

    }
    protected void Login1_LoginError(object sender, EventArgs e)
    {

        Login PasswordRecovery = Block1.ContentPlaceholder.Controls[0].FindControl("PasswordRecoveryUrl") as Login;


        if (ViewState["LoginErrors"] == null)
            ViewState["LoginErrors"] = 0;

        int ErrorCount = (int)ViewState["LoginErrors"] + 1;
        ViewState["LoginErrors"] = ErrorCount;

        if ((ErrorCount > 3) && (PasswordRecovery.PasswordRecoveryUrl != string.Empty))
            Response.Redirect(PasswordRecovery.PasswordRecoveryUrl);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(4000);
        loginblock.DataBind();
        LinkButton lnkuser2 = loginblock.ContentPlaceholder.Controls[0].FindControl("LinkButton2") as LinkButton;
        Response.Redirect("UserLogin.aspx?");
       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["clients"] = null;
        Response.Redirect("Default.aspx?");
    }
    protected void linkAdmin_Click(object sender, EventArgs e)
    {
        
    }
    protected void linkBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminStartPage.aspx");
    }
    protected void linkSignOut_Click(object sender, EventArgs e)
    {     
        Session["USERS"] = null;
        Session["Administration"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
}
