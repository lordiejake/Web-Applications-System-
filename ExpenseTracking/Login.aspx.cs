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

public partial class Login : System.Web.UI.Page
{

    protected void btnsave_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand command = new SqlCommand("SELECT * FROM RegisteredUsers WHERE username ='" + txtusername.Text + "' AND userpassword ='" + txtpssword.Text + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    Session["USERS"] = "WELCOME:" + dr[1].ToString() + ", " + dr[2].ToString() + " " + dr[3].ToString() + " (Sign Out)";
                    Session["USERSid"] = dr[0].ToString();
                    lblMesssage.Visible = false;
                    Response.Redirect("Home.aspx?");
                   
                }
            }
            else
            {
                RequiredFieldValidator1.Visible = false;
                lblMesssage.Visible = true;
            }

        }
        catch (Exception)
        {
            //AdminStatus.Text = "failed to login";
        }
        finally
        {
            conn.Close();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registerusers.aspx");
        
    }
    protected void txtpssword_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
        
    }
}