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

public partial class EditProfile : System.Web.UI.Page
{
    SqlConnection conn = null;
    string usersid;
    string password_detect;
    double iid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // Label3.Visible = false;
            Linkpasswordchange.Visible = false;
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
               // Button1.Text  = usersid.ToString();
                iid = double.Parse(usersid.ToString());
                Label4.Text = iid.ToString();
            }

            LoadProfile();
            searchPassword();
        }
    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        DetectUserName();
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
                    lbldetectusername.Visible = true;
                }

            }
            else
            {
                lbldetectusername.Visible = false;
                UpdatePrimaryProfile();
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
    void UpdatePrimaryProfile()
    {
        try
        {
            double loadedid = double.Parse(iid.ToString());
            conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            conn.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("UPDATE RegisteredUsers SET userlastname='" + txtlastname.Text + "',userfirstname='" + txtfirstname.Text + "',usermiddlename='" + txtmiddlename.Text + "',useremailaddress = '" + txtemailaddress.Text + "',username = '" + txtuser.Text + "'WHERE registereduserID = '" + double.Parse(Label4.Text) + "'", conn);
            int queryResult = insertCommand.ExecuteNonQuery();

        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            if (conn != null)
                conn.Close();
        }
    }
    void UpdatePrimaryProfile_Password()
    {
        try
        {
            double loadedid = double.Parse(iid.ToString());
            conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            conn.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("UPDATE RegisteredUsers SET userpassword ='" + TextBox1.Text + "'WHERE registereduserID = '" + double.Parse(Label4.Text) + "'", conn);
            int queryResult = insertCommand.ExecuteNonQuery();

        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            if (conn != null)
                conn.Close();
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
    void LoadProfile()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            double loadedid = double.Parse(usersid.ToString());
            SqlCommand command = new SqlCommand("SELECT * FROM RegisteredUsers WHERE registereduserID = '" + loadedid + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtlastname.Text = dr[1].ToString();
                    txtfirstname.Text = dr[2].ToString();
                    txtmiddlename.Text = dr[3].ToString();
                    txtemailaddress.Text = dr[4].ToString();
                    txtuser.Text  = dr[5].ToString();
                    txtpassword.Text = dr[6].ToString();

                }
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
    
    void searchPassword() 
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            double loadedid = double.Parse(usersid.ToString());
            SqlCommand command = new SqlCommand("SELECT userpassword FROM RegisteredUsers WHERE registereduserID = '" + loadedid + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Label2.Text = dr[0].ToString();
                }
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Label1.Visible = true;
        if (txtpassword.Text != Label2.Text)
        {
            Label1.Visible = true;
            Label1.Text = "Password did not match in the current password.";
        }
        else
        {
            Label1.Visible = false;
            Label1.Text = "Password match";
            UpdatePrimaryProfile_Password();
            Linkpasswordchange.Visible = true;
        }
    }
    protected void Linkpasswordchange_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx?");
    }
}