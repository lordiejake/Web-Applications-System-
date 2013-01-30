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

public partial class Signup : System.Web.UI.Page
{
    SqlConnection conn = null;
    string status = "";
    protected void Page_Load(object sender, EventArgs e)
    {
      
        
    }

    void Login()
    {
        try
        {
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT * FROM tbl_UserClient WHERE usercodename = '" + TextBox8.Text + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                status = "Exists";
            }
            else
            {
                status = "No Exists";
            }

        }
        catch (Exception)
        {
            //AdminStatus.Text = "failed to login";
        }

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Login();
        if (status == "Exists")
        {
            LinkButton2.Visible = true;
            LinkButton2.Text = "User Name: * " + TextBox8.Text + " *" + "Already Exists.";
        }
        if (status == "No Exists")
        {
            LinkButton2.Visible = false;
            try
            {
                conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
                conn.Open();
                System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("Insert into [tbl_UserClient] (userlname,userfname,usermname,userage,useraddress,usercontactnumber,useremailadd,usercodename,userpassword) Values (@userlname,@userfname,@usermname,@userage,@useraddress,@usercontactnumber,@useremailadd,@usercodename,@userpassword)", conn);
                // insertCommand.Parameters.Add("Pic", SqlDbType.Image, 0).Value = ConvertImageToByteArray(imag, System.Drawing.Imaging.ImageFormat.Jpeg);
                insertCommand.Parameters.Add(new SqlParameter("@userlname", TextBox1.Text));
                insertCommand.Parameters.Add(new SqlParameter("@userfname", TextBox2.Text));
                insertCommand.Parameters.Add(new SqlParameter("@usermname", TextBox3.Text));
                insertCommand.Parameters.Add(new SqlParameter("@userage", TextBox4.Text));
                insertCommand.Parameters.Add(new SqlParameter("@useraddress", TextBox5.Text));
                insertCommand.Parameters.Add(new SqlParameter("@usercontactnumber", TextBox6.Text));
                insertCommand.Parameters.Add(new SqlParameter("@useremailadd", TextBox7.Text));
                insertCommand.Parameters.Add(new SqlParameter("@usercodename", TextBox8.Text));
                insertCommand.Parameters.Add(new SqlParameter("@userpassword", TextBox9.Text));
                int queryResult = insertCommand.ExecuteNonQuery();
                if (queryResult == 1)
                {
                    LinkButton2.Text = "[Successfully save: Proceed to login(Click here)]";
                    LinkButton2.Visible = true;
                    TextBox1.Text = null;
                    TextBox2.Text = null;
                    TextBox3.Text = null;
                    TextBox4.Text = null;
                    TextBox5.Text = null;
                    TextBox6.Text = null;
                    TextBox7.Text = null;
                    TextBox8.Text = null;
                    TextBox9.Text = null;

                }
                else
                {
                    LinkButton2.Visible = false;
                }

            }
            catch (Exception)
            {

            }
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (LinkButton2.Text == "[Successfully save: Proceed to login(Click here)]")
        {
            Response.Redirect("UserLogin.aspx?"); 
        }
    }
}