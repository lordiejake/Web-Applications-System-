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

public partial class ViewExpensesSpentDetails : System.Web.UI.Page
{
    SqlConnection conn = null;
    string usersid;
    double iid;
    double expenseIDEN;
    

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
               // lbluserID_hiden.Text = iid.ToString();
            }
            if (Request.QueryString["expenseCode"] != null)
            {
                expenseIDEN = double.Parse(Request.QueryString["expenseCode"]);
                lblRecordsID.Text = expenseIDEN.ToString();
            }
            DisplayTag();
            PostExpenses_byDate();
            DisplayTotals();
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
            SqlCommand commandz = new SqlCommand("SELECT * FROM tbl_expensesDesc WHERE expensesID = '" + expenseIDEN + "'", conn);
            conn.Open();
            SqlDataReader drz = commandz.ExecuteReader();
            if (drz.HasRows)
            {
                while (drz.Read())
                {
                    lnktagcategory.Text = drz[1].ToString();
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

    void PostExpenses_byDate()
    {
        try
        {
            GridView1.DataSource = ClassDataManager.view_Expenses_Categorized(expenseIDEN);
            GridView1.DataBind();
        }
        catch (Exception)
        {
            //throw;
             Response.Redirect("Login.aspx");
        }

    }
    void PostExpenses_byDate_Categorized()
    {
        try
        {
            string start = txtstartdate.Text + " 12:00:01 AM";
            string end =  txtenddate.Text + " 11:59:00 PM";
            GridView1.DataSource = ClassDataManager.view_Expenses_Categorized_bydate(double.Parse(lblRecordsID.Text),start,end);
            GridView1.DataBind();
        }
        catch (Exception)
        {
            //throw;
            Response.Redirect("Login.aspx");
        }

    }


    protected void btnexecute_Click(object sender, EventArgs e)
    {
        PostExpenses_byDate_Categorized();
        DisplayTotals_BeginEnd();
    }
    void DisplayExpenses_ByDateExecute()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            string startdate = txtstartdate.Text + " 12:01:00 AM";
            string enddate = txtenddate.Text + " 11:59:59 PM";
            SqlCommand commandz = new SqlCommand("SELECT        TOP (100) PERCENT amountspent, dateRecorded, usersexpensesID  FROM            dbo.tbl_RecordsSpent  WHERE usersexpensesID  = '" + iid + "'AND dateRecorded BETWEEN '" + startdate + "'AND'" + enddate + "'ORDER BY dateRecorded DESC", conn);
            conn.Open();
            SqlDataReader drz = commandz.ExecuteReader();
            if (drz.HasRows)
            {
                while (drz.Read())
                {
                    lnktagcategory.Text = drz[1].ToString();
                }

            }
            else
            {
               // lnktagcategory.Text = "0";
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

    void DisplayTotals()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand commandz = new SqlCommand("SELECT        SUM(tbl_RecordsSpent.amountspent) AS AllAmount, tbl_expenses_users.expensesID FROM            tbl_RecordsSpent INNER JOIN    tbl_expenses_users ON tbl_RecordsSpent.usersexpensesID = tbl_expenses_users.usersexpensesID   WHERE  tbl_expenses_users.expensesID = '" + double.Parse(lblRecordsID.Text) + "'GROUP BY tbl_expenses_users.expensesID", conn);
            conn.Open();
            SqlDataReader drz = commandz.ExecuteReader();
            if (drz.HasRows)
            {
                while (drz.Read())
                {
                    lblTotalAmount.Text = "P  " + drz[0].ToString();
                }

            }
            else 
            {
                lblTotalAmount.Text = "P  0.00";
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

    void DisplayTotals_BeginEnd()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            string startdate = txtstartdate.Text + " 12:01:00 AM";
            string enddate = txtenddate.Text + " 11:59:59 PM";
            SqlCommand commandz = new SqlCommand("SELECT        SUM(tbl_RecordsSpent.amountspent) AS Expr1, tbl_expenses_users.expensesID  FROM            tbl_expenses_users INNER JOIN  tbl_RecordsSpent ON tbl_expenses_users.usersexpensesID = tbl_RecordsSpent.usersexpensesID   WHERE  tbl_expenses_users.expensesID = '" + double.Parse(lblRecordsID.Text) + "' AND tbl_RecordsSpent.dateRecorded BETWEEN '" + startdate + "' AND '" + enddate + "'GROUP BY tbl_expenses_users.expensesID", conn);
            conn.Open();
            SqlDataReader drz = commandz.ExecuteReader();
            if (drz.HasRows)
            {
                while (drz.Read())
                {
                    lblTotalAmount.Text = "P  " + drz[0].ToString();
                }

            }
            else 
            {
                lblTotalAmount.Text = "P  0.00";
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