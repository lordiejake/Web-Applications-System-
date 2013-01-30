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

public partial class Registerusers : System.Web.UI.Page
{
    SqlConnection conn = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        try
        {
            DetectUserName();
        }
        catch (Exception)
        {
            lnkLoginPage.Visible = true; 
        }
    }
    protected void lnkLoginPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    void DetectUserName()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand commandz = new SqlCommand("SELECT  * FROM RegisteredUsers WHERE username = '" + txtuser.Text + "'", conn);
            conn.Open();
            SqlDataReader drz = commandz.ExecuteReader();
            if (drz.HasRows)
            {
                while (drz.Read())
                {
                    //lnktagcategory.Text = drz[0].ToString();
                    lbldetectusername.Visible = true;
                }

            }
            else
            {
                lbldetectusername.Visible = false;
                ClassDataManager addusers = new ClassDataManager();
                addusers.Addusers(txtlastname.Text, txtfirstname.Text, txtmiddlename.Text, txtemailaddress.Text, txtuser.Text, txtpassword.Text);
                lnkLoginPage.Visible = true; 
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
}