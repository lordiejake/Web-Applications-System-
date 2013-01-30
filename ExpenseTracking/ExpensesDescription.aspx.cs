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

public partial class ExpensesDescription : System.Web.UI.Page
{
    SqlConnection conn = null;
    string usersid;
    double iid;

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
                // Button1.Text  = usersid.ToString();
                iid = double.Parse(usersid.ToString());
                lbluserID_hiden.Text = iid.ToString();
            }

            PostExpenses();
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
    protected void btnsave_Click(object sender, EventArgs e)
    {
        //ClassDataManager data = new ClassDataManager();
        //data.AddExpensesDescriptions(txtExpensesDescription.Text);
        //LoadLatestExpenseInput();

        Detect_ExpensesDescription_conflict_expenses();

    }
    void LoadLatestExpenseInput()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand command = new SqlCommand("SELECT  TOP (1) expensesID FROM tbl_expensesDesc ORDER BY expensesID DESC", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Label1.Visible = false;
                    lbllatestExpenseId_Hiden.Text = dr[0].ToString();
                    ClassDataManager inssertData = new ClassDataManager();
                    inssertData.AddExpensesDescriptions_Users(double.Parse(lbluserID_hiden.Text), double.Parse(lbllatestExpenseId_Hiden.Text));

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

    void Detect_ExpensesDescription()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand command = new SqlCommand("SELECT * FROM tbl_expensesDesc WHERE expensesDescription = '" + txtExpensesDescription.Text + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lbllatestExpenseId_Hiden.Text = dr[0].ToString();
                    Detect_ExpensesDescription_conflict(double.Parse(lbluserID_hiden.Text), double.Parse(lbllatestExpenseId_Hiden.Text));

                    if (lblconnect.Text != "Detected")
                    {
                        Label1.Visible = false;
                        ClassDataManager inssertData = new ClassDataManager();
                        inssertData.AddExpensesDescriptions_Users(double.Parse(lbluserID_hiden.Text), double.Parse(lbllatestExpenseId_Hiden.Text));
                    }
                    else
                    {
                        Label1.Visible = true;
                    }
                }
            }
            else
            {
                ClassDataManager data = new ClassDataManager();
                data.AddExpensesDescriptions(txtExpensesDescription.Text);
                LoadLatestExpenseInput();
                
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

    void Detect_ExpensesDescription_conflict(double us, double expense)
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand commandz = new SqlCommand("SELECT * FROM tbl_expenses_users WHERE registereduserID = '" + us + "' AND expensesID = '" + expense + "'", conn);
            conn.Open();
            SqlDataReader drz = commandz.ExecuteReader();
            if (drz.HasRows)
            {
                while (drz.Read())
                {
                   lblconnect.Text = "Detected";
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
                }

            }
            else
            {
                Label1.Visible = false;
                ClassDataManager data = new ClassDataManager();
                data.AddExpensesDescriptions(txtExpensesDescription.Text);
                LoadLatestExpenseInput();
                Linksave.Visible = true;

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

    void PostExpenses()
    {
        try
        {
            GridView1.DataSource = ClassDataManager.AllExpenses(iid);
            GridView1.DataBind();
        }
        catch (Exception)
        {
            throw;
           // Response.Redirect("Login.aspx");
        }
       
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());

        if (e.CommandName.Equals("Select"))
        {
            int Getindex = int.Parse(GridView1.DataKeys[index].Value.ToString());
            if (Getindex > 0)
            {
                Response.Redirect("ExpenseRecorded.aspx?userexpenseCode=" + int.Parse(GridView1.DataKeys[index].Value.ToString()));
            }
            if (Getindex == 0)
            {
                
            }
        }
    }
    protected void Linksave_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExpensesDescription.aspx?");
    }
}