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

public partial class DeleteRecordSpent : System.Web.UI.Page
{
    SqlConnection conn = null;
    string usersid;
    double iid;
    double expense_user;
    double recordsID;
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
            }
            if (Request.QueryString["userexpenseCode"] != null)
            {
                expense_user = double.Parse(Request.QueryString["userexpenseCode"]);
                lblid_am.Text = expense_user.ToString();
            }
            if (Request.QueryString["recordsID"] != null)
            {
                recordsID = double.Parse(Request.QueryString["recordsID"]);
                lblRecordsID.Text = recordsID.ToString();
                try
                {
                    if (double.Parse(lblRecordsID.Text) > 0)
                    {
                        

                    }
                    else
                    {
                        
                    }
                }
                catch (Exception)
                {
                    
                }
            }

            DisplayTag();
            PostExpenses_byDate();
            EditExpenses();
        }
    }
    void EditExpenses()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand commandz = new SqlCommand("SELECT * FROM tbl_RecordsSpent WHERE recordsAmountID = '" + recordsID + "'", conn);
            conn.Open();
            SqlDataReader drz = commandz.ExecuteReader();
            if (drz.HasRows)
            {
                while (drz.Read())
                {
                    TextBox1.Text = drz[2].ToString();
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
    
    void DisplayTag()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand commandz = new SqlCommand("SELECT        tbl_expensesDesc.expensesdescription  FROM            RegisteredUsers INNER JOIN tbl_expenses_users ON RegisteredUsers.registereduserID = tbl_expenses_users.registereduserID INNER JOIN   tbl_expensesDesc ON tbl_expenses_users.expensesID = tbl_expensesDesc.expensesID WHERE tbl_expenses_users.usersexpensesID = '" + expense_user + "'", conn);
            conn.Open();
            SqlDataReader drz = commandz.ExecuteReader();
            if (drz.HasRows)
            {
                while (drz.Read())
                {
                    lnktagcategory.Text = drz[0].ToString();
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
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            double text1 = double.Parse(TextBox1.Text.Length.ToString());
            if (text1 > 0)
            {
                Label1.Visible = true;
                Label2.Visible = true;
                LinkButton2.Visible = true;
                LinkButton3.Visible = true;
            }
            else
            {
                Label1.Visible = false;
                Label2.Visible = false;
                LinkButton2.Visible = false;
                LinkButton3.Visible = false;
            }
        }
        catch (Exception)
        {
            
            throw;
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());

        if (e.CommandName.Equals("Select"))
        {
            Response.Redirect("DeleteRecordSpent.aspx?userexpenseCode=" + lblid_am.Text + "&recordsID=" + int.Parse(GridView1.DataKeys[index].Value.ToString()));
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
    void PostExpenses_byDate()
    {
        try
        {
            GridView1.DataSource = ClassDataManager.view_Expenses(double.Parse(expense_user.ToString()));
            GridView1.DataBind();
        }
        catch (Exception)
        {
            throw;
            // Response.Redirect("Login.aspx");
        }

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        LinkButton2.Visible = false;
        LinkButton3.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        DeleteRecords_Expenses();
        Response.Redirect("DeleteRecordSpent.aspx?userexpenseCode=" + double.Parse(lblid_am.Text));

    }

    void DeleteRecords_Expenses()
    {
        try
        {
            conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            conn.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("DELETE FROM tbl_RecordsSpent WHERE recordsAmountID = '" + double.Parse(lblRecordsID.Text) + "'", conn);
            int queryResult = insertCommand.ExecuteNonQuery();
            if (queryResult == 1)
            {

            }
        }
        catch (Exception)
        {
            //throw;
        }
        finally
        {
            if (conn != null)
                conn.Close();
        }
    }

    void DeleteRecords_ExpensesALL()
    {
        try
        {
            conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            conn.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("DELETE FROM tbl_RecordsSpent WHERE usersexpensesID = '" + double.Parse(lblid_am.Text) + "'", conn);
            int queryResult = insertCommand.ExecuteNonQuery();
            if (queryResult == 1)
            {

            }
        }
        catch (Exception)
        {
            //throw;
        }
        finally
        {
            if (conn != null)
                conn.Close();
        }
    }

    protected void btndeleteall_Click(object sender, EventArgs e)
    {
        
        Label3.Visible = true;
        Label4.Visible = true;
        LinkButton4.Visible = true;
        LinkButton5.Visible = true;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        DeleteRecords_ExpensesALL();
        Response.Redirect("DeleteRecordSpent.aspx?userexpenseCode=" + double.Parse(lblid_am.Text));
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Label3.Visible = false;
        Label4.Visible = false;
        LinkButton4.Visible = false;
        LinkButton5.Visible = false;
    }
}