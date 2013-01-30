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

public partial class EditExpenseDescription : System.Web.UI.Page
{
    SqlConnection conn = null;
    string usersid;
    double iid;
    double expensedesccode;
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
                lbluserID_hiden.Text = iid.ToString();
            }
            if (Request.QueryString["ExpenseDescriptionCode"] != null)
            {
                expensedesccode = double.Parse(Request.QueryString["ExpenseDescriptionCode"]);
                LblcodeDesc.Text = expensedesccode.ToString();
            }

            PostExpenses();
            DisplayTag();
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
    protected void Linksave_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditExpenseDescription.aspx?");
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        double counttext = double.Parse(txtExpensesDescription.Text.Length.ToString());
        if (counttext > 0)
        {
            Detect_ExpensesDescription_conflict_expenses();
            if (Label1.Visible == false)
            {
                UpdateExpensesDescription();
                Linksave.Visible = true;
            }
            if (Label1.Visible == true)
            {
                Linksave.Visible = false;
            }
        }
        else
        {

        }
        
    }
    void UpdateExpensesDescription()
    {
        try
        {
           // double loadedid = double.Parse(iid.ToString());
            conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            conn.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("UPDATE tbl_expensesDesc SET expensesdescription ='" + txtExpensesDescription.Text + "'WHERE expensesID = '" + double.Parse(LblcodeDesc.Text) + "'", conn);
            int queryResult = insertCommand.ExecuteNonQuery();
            Label1.Visible = false; 

        }
        catch (Exception)
        {
            Label1.Visible = true; 
            Label1.Text = "Select from the list first.";
        }
        finally
        {
            if (conn != null)
                conn.Close();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }
    void PostExpenses()
    {
        try
        {
            GridView1.DataSource = ClassDataManager.AllExpenses_tobeEdited(iid);
            GridView1.DataBind();
        }
        catch (Exception)
        {
            throw;
            // Response.Redirect("Login.aspx");
        }

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        txtExpensesDescription.Text = "ttk";
        
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        txtExpensesDescription.Text = "tty";

    }
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());

        if (e.CommandName.Equals("Select"))
        {
            Response.Redirect("EditExpenseDescription.aspx?ExpenseDescriptionCode=" + int.Parse(GridView1.DataKeys[index].Value.ToString()));
        }
    }

    void DisplayTag()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand commandz = new SqlCommand("SELECT * FROM tbl_expensesDesc WHERE expensesID = '" + double.Parse(LblcodeDesc.Text) + "'", conn);
            conn.Open();
            SqlDataReader drz = commandz.ExecuteReader();
            if (drz.HasRows)
            {
                while (drz.Read())
                {
                    txtExpensesDescription.Text = drz[1].ToString();
                }

            }
            else 
            {
                txtExpensesDescription.Text = null;
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

    void Detect_ExpensesDescription_conflict_expenses()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand commandz = new SqlCommand("SELECT        RegisteredUsers.registereduserID, tbl_expensesDesc.expensesdescription   FROM            RegisteredUsers INNER JOIN  tbl_expenses_users ON RegisteredUsers.registereduserID = tbl_expenses_users.registereduserID INNER JOIN    tbl_expensesDesc ON tbl_expenses_users.expensesID = tbl_expensesDesc.expensesID  WHERE RegisteredUsers.registereduserID ='" + double.Parse(lbluserID_hiden.Text) + "' AND tbl_expensesDesc.expensesdescription = '" + txtExpensesDescription.Text + "'", conn);
            conn.Open();
            SqlDataReader drz = commandz.ExecuteReader();
            if (drz.HasRows)
            {
                while (drz.Read())
                {
                    Label1.Visible = true;
                    Linksave.Visible = false;
                    //UpdateExpensesDescription();
                }

            }
            else
            {
                Label1.Visible = false;

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