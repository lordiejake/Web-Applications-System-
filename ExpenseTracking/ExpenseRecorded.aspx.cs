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

public partial class ExpenseRecorded : System.Web.UI.Page
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
                lblRecordsID.Text =  recordsID.ToString();
                try
                {
                    if (double.Parse(lblRecordsID.Text) > 0)
                    {
                        txtupdatedtextbox.Enabled = true;
                        txtupdate.Enabled = true;

                    }
                    else
                    {
                        txtupdatedtextbox.Enabled = false;
                        txtupdate.Enabled = false;
                    }
                }
                catch (Exception)
                {
                    txtupdatedtextbox.Enabled = false;
                    txtupdate.Enabled = false;
                }
            }

            DisplayTag();
            PostExpenses_byDate();
            EditExpenses();
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
        //AddRecords_Expenses();
        //AddRecords_Expenses();
        try
        {
            double amount = double.Parse(TextBox1.Text);
            if (amount >= 0)
            {
                txtupdatedtextbox.Enabled = false;
                txtupdate.Enabled = false;
                lblRecordsID.Text = "strings"; 
                lblinvalid.Visible = false;
                LinkButton2.Visible = true;
                AddRecords_Expenses();
            }
            else
            {
                lblinvalid.Visible = true;
                LinkButton2.Visible = false;
            }
        }
        catch (Exception)
        {
            lblinvalid.Visible = true;
            LinkButton2.Visible = false;
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

    void AddRecords_Expenses()
    {
        try
        {
            conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            conn.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("Insert into [tbl_RecordsSpent] (usersexpensesID,amountspent,dateRecorded)Values(@usersexpensesID,@amountspent,@dateRecorded)", conn);
            insertCommand.Parameters.Add(new SqlParameter("@usersexpensesID", double.Parse(lblid_am.Text)));
            insertCommand.Parameters.Add(new SqlParameter("@amountspent", double.Parse(TextBox1.Text)));
            insertCommand.Parameters.Add(new SqlParameter("@dateRecorded", DateTime.Now.ToString()));
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

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExpenseRecorded.aspx?userexpenseCode=" + int.Parse(lblid_am.Text));
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());

        if (e.CommandName.Equals("Select"))
        {
            Response.Redirect("ExpenseRecorded.aspx?userexpenseCode=" + lblid_am.Text + "&recordsID=" + int.Parse(GridView1.DataKeys[index].Value.ToString()));
        }
    }
    protected void txtupdate_Click(object sender, EventArgs e)
    {
        try
        {
           // double detect = double.Parse(txtupdatedtextbox.Text.Length.ToString());
            if (double.Parse(txtupdatedtextbox.Text) >= 0)
            {
                Label1.Visible = false;
                UpdateExpenses_Money();
                LinkButton3.Visible = true;
            }
            else
            {
                Label1.Visible = true;
                LinkButton3.Visible = false;
            }
        }
        catch (Exception)
        {
            Label1.Visible = true;
        }
    }

    void UpdateExpenses_Money()
    {
        try
        {
            conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            conn.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("UPDATE tbl_RecordsSpent SET amountspent ='" + double.Parse(txtupdatedtextbox.Text) + "'WHERE recordsAmountID = '" + double.Parse(lblRecordsID.Text) + "'", conn);
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
                    txtupdatedtextbox.Text = drz[2].ToString();
                }

            }
            else
            {
                txtupdatedtextbox.Enabled = false;
                txtupdate.Enabled = false;
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

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExpenseRecorded.aspx?userexpenseCode=" + lblid_am.Text);
    }
}