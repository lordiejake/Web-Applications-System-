using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ClassDataManager
/// </summary>
public class ClassDataManager
{
    SqlConnection con = null;
	public ClassDataManager()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void Addusers(string lastname, string firstname, string middlename, string email, string usernames, string passwords)
    {
        try
        {
            con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            con.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("Insert into [RegisteredUsers] (userlastname,userfirstname,usermiddlename,useremailaddress,username,userpassword) Values (@userlastname,@userfirstname,@usermiddlename,@useremailaddress,@username,@userpassword)", con);
            // insertCommand.Parameters.Add("Pic", SqlDbType.Image, 0).Value = ConvertImageToByteArray(imag, System.Drawing.Imaging.ImageFormat.Jpeg);
            insertCommand.Parameters.Add(new SqlParameter("@userlastname", lastname.ToString()));
            insertCommand.Parameters.Add(new SqlParameter("@userfirstname", firstname.ToString()));
            insertCommand.Parameters.Add(new SqlParameter("@usermiddlename", middlename.ToString()));
            insertCommand.Parameters.Add(new SqlParameter("@useremailaddress", email.ToString()));
            insertCommand.Parameters.Add(new SqlParameter("@username", usernames.ToString()));
            insertCommand.Parameters.Add(new SqlParameter("@userpassword", passwords.ToString()));
            
            int queryResult = insertCommand.ExecuteNonQuery();
            if (queryResult == 1)
            {

            }
        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            if (con != null)
                con.Close();
        }
    }
    public void AddExpensesDescriptions(string expensesDesc)
    {
        try
        {
            con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            con.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("Insert into [tbl_expensesDesc] (expensesdescription) Values (@expensesdescription)", con);
            insertCommand.Parameters.Add(new SqlParameter("@expensesdescription", expensesDesc.ToString()));
            int queryResult = insertCommand.ExecuteNonQuery();
            if (queryResult == 1)
            {

            }
        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            if (con != null)
                con.Close();
        }
    }

    public void AddExpensesDescriptions_Users(double usersID, double expensesID)
    {
        try
        {
            con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            con.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("Insert into [tbl_expenses_users] (registereduserID,expensesID) Values (@registereduserID,@expensesID)", con);
            insertCommand.Parameters.Add(new SqlParameter("@registereduserID", double.Parse(usersID.ToString())));
            insertCommand.Parameters.Add(new SqlParameter("@expensesID", double.Parse(expensesID.ToString())));
            int queryResult = insertCommand.ExecuteNonQuery();
            if (queryResult == 1)
            {

            }
        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            if (con != null)
                con.Close();
        }
    }

    public void AddRecords_Expenses(double userexpensesID, double amountspent)
    {
        try
        {
            con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            con.Open();
            System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("Insert into [tbl_RecordsSpent] (usersexpensesIDc,amountspent,dateRecorded)Values(@usersexpensesIDc,@amountspent,@dateRecorded)", con);
            insertCommand.Parameters.Add(new SqlParameter("@usersexpensesIDc", double.Parse(userexpensesID.ToString())));
            insertCommand.Parameters.Add(new SqlParameter("@amountspent", double.Parse(amountspent.ToString())));
            insertCommand.Parameters.Add(new SqlParameter("@dateRocorded", DateTime.Now.ToString()));
            int queryResult = insertCommand.ExecuteNonQuery();
            if (queryResult == 1)
            {

            }
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            if (con != null)
                con.Close();
        }
    }

    private double usID;
    public double USERID 
    {
        get { return usID; }
        set { usID = value; }
    }


    public static List<ClassFields> AllExpenses(double usersid)
    {
        List<ClassFields> list = new List<ClassFields>();
        using (SqlConnection conn = ClassConnection.ConnectToServer())
        {
            string sql = "SELECT        TOP (100) PERCENT tbl_expenses_users.usersexpensesID, tbl_expenses_users.registereduserID, tbl_expenses_users.expensesID,  tbl_expensesDesc.expensesdescription  FROM            RegisteredUsers INNER JOIN   tbl_expenses_users ON RegisteredUsers.registereduserID = tbl_expenses_users.registereduserID INNER JOIN  tbl_expensesDesc ON tbl_expenses_users.expensesID = tbl_expensesDesc.expensesID  WHERE  RegisteredUsers.registereduserID = '" + usersid + "'ORDER BY tbl_expensesDesc.expensesdescription";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ClassFields f = new ClassFields();
                            f.usersexpensesID = long.Parse(dr["usersexpensesID"].ToString());
                            f.registereduserID = long.Parse(dr["registereduserID"].ToString());
                            f.expensesID = long.Parse(dr["expensesID"].ToString());
                            f.expensesdescription = dr["expensesdescription"].ToString();
                            list.Add(f);
                        }
                    }
                    else
                    {
                        ClassFields f = new ClassFields();
                        f.usersexpensesID = 0;
                        f.registereduserID = 0;
                        f.expensesID = 0;
                        f.expensesdescription = "no Records Yet";
                        list.Add(f);
                    }
                }
            }
        }
        return list;
    }

    public static List<ClassFields> AllExpenses_tobeEdited(double usersid)
    {
        List<ClassFields> list = new List<ClassFields>();
        using (SqlConnection conn = ClassConnection.ConnectToServer())
        {
            string sql = "SELECT        TOP (100) PERCENT tbl_expenses_users.usersexpensesID, tbl_expenses_users.registereduserID, tbl_expenses_users.expensesID,  tbl_expensesDesc.expensesdescription  FROM            RegisteredUsers INNER JOIN   tbl_expenses_users ON RegisteredUsers.registereduserID = tbl_expenses_users.registereduserID INNER JOIN  tbl_expensesDesc ON tbl_expenses_users.expensesID = tbl_expensesDesc.expensesID  WHERE  RegisteredUsers.registereduserID = '" + usersid + "'ORDER BY tbl_expensesDesc.expensesdescription";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ClassFields f = new ClassFields();
                            f.usersexpensesID = long.Parse(dr["usersexpensesID"].ToString());
                            f.registereduserID = long.Parse(dr["registereduserID"].ToString());
                            f.expensesID = long.Parse(dr["expensesID"].ToString());
                            f.expensesdescription = dr["expensesdescription"].ToString();
                            list.Add(f);
                        }
                    }
                    else
                    {
                        ClassFields f = new ClassFields();
                        f.usersexpensesID = 0;
                        f.registereduserID = 0;
                        f.expensesID = 0;
                        f.expensesdescription = "no Records Yet";
                        list.Add(f);
                    }
                }
            }
        }
        return list;
    }

    public static List<ClassFields> view_Expenses(double expenz)
    {
        List<ClassFields> list = new List<ClassFields>();
        using (SqlConnection conn = ClassConnection.ConnectToServer())
        {
            string sql = "SELECT        TOP (100) PERCENT recordsAmountID, usersexpensesID, amountspent, dateRecorded FROM  dbo.tbl_RecordsSpent WHERE usersexpensesID = '" + expenz + "'ORDER BY dateRecorded DESC";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ClassFields f = new ClassFields();
                            f.recordsAmountID = long.Parse(dr["recordsAmountID"].ToString());
                            f.usersexpensesID = long.Parse(dr["usersexpensesID"].ToString());
                            string v = string.Format("{0:N2}", dr["amountspent"].ToString());
                            f.amountspent =  "P  " + v.ToString();
                            f.dateRecorded = dr["dateRecorded"].ToString();
                            list.Add(f);
                        }
                    }
                    else
                    {
                        ClassFields f = new ClassFields();
                        f.recordsAmountID = 0;
                        f.usersexpensesID = 0;
                        f.amountspent = "0";
                        f.dateRecorded = "no Record/s Yet";
                        list.Add(f);
                    }
                }
            }
        }
        return list;
    }


    public static List<ClassFields> view_User_Expenses_Reports(double UserIds)
    {
        List<ClassFields> list = new List<ClassFields>();
        using (SqlConnection conn = ClassConnection.ConnectToServer())
        {
            string sql = "SELECT   TOP (100) PERCENT SUM(tbl_RecordsSpent.amountspent) AS OverallAmount, tbl_expensesDesc.expensesdescription, tbl_expenses_users.registereduserID,  tbl_expenses_users.usersexpensesID, tbl_expenses_users.expensesID  FROM            RegisteredUsers INNER JOIN   tbl_expenses_users ON RegisteredUsers.registereduserID = tbl_expenses_users.registereduserID INNER JOIN  tbl_expensesDesc ON tbl_expenses_users.expensesID = tbl_expensesDesc.expensesID INNER JOIN  tbl_RecordsSpent ON tbl_expenses_users.usersexpensesID = tbl_RecordsSpent.usersexpensesID  WHERE RegisteredUsers.registereduserID = '" + UserIds + "'GROUP BY tbl_expensesDesc.expensesdescription, tbl_expenses_users.registereduserID, tbl_expenses_users.usersexpensesID, tbl_expenses_users.expensesID  ORDER BY tbl_expensesDesc.expensesdescription";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ClassFields f = new ClassFields();
                            f.OverallAmount = "P  " + dr["OverallAmount"].ToString();
                            f.expensesdescription =  dr["expensesdescription"].ToString();
                            f.registereduserID = long.Parse(dr["registereduserID"].ToString());
                            f.usersexpensesID = long.Parse(dr["usersexpensesID"].ToString());
                            f.expensesID = long.Parse(dr["expensesID"].ToString());
                            
                            list.Add(f);
                        }
                    }
                    else
                    {
                        ClassFields f = new ClassFields();
                        f.OverallAmount = "Empty";
                        f.expensesdescription = "Empty";
                        f.registereduserID = 0;
                        f.usersexpensesID = 0;
                        f.expensesID = 0;
                        list.Add(f);
                    }
                }
            }
        }
        return list;
    }


    public static List<ClassFields> view_Expenses_Categorized(double expenzID)
    {
        List<ClassFields> list = new List<ClassFields>();
        using (SqlConnection conn = ClassConnection.ConnectToServer())
        {
            string sql = "SELECT        TOP (100) PERCENT tbl_RecordsSpent.amountspent, tbl_RecordsSpent.dateRecorded   FROM            RegisteredUsers INNER JOIN    tbl_expenses_users ON RegisteredUsers.registereduserID = tbl_expenses_users.registereduserID INNER JOIN  tbl_expensesDesc ON tbl_expenses_users.expensesID = tbl_expensesDesc.expensesID INNER JOIN    tbl_RecordsSpent ON tbl_expenses_users.usersexpensesID = tbl_RecordsSpent.usersexpensesID  WHERE tbl_expenses_users.expensesID = '" +expenzID + "'ORDER BY tbl_RecordsSpent.dateRecorded DESC";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ClassFields f = new ClassFields();
                            string v = string.Format("{0:N2}", dr["amountspent"].ToString());
                            f.amountspent = "P  " + v.ToString();
                            f.dateRecorded = dr["dateRecorded"].ToString();
                            list.Add(f);
                        }
                    }
                    else
                    {
                        ClassFields f = new ClassFields();
                        f.amountspent = "0";
                        f.dateRecorded = "no Record/s Yet";
                        list.Add(f);
                    }
                }
            }
        }
        return list;
    }

    public static List<ClassFields> view_Expenses_Categorized_bydate(double userIDxExpense, string startdate,string enddate)
    {
        List<ClassFields> list = new List<ClassFields>();
        using (SqlConnection conn = ClassConnection.ConnectToServer())
        {
            string sql = "SELECT        TOP (100) PERCENT tbl_RecordsSpent.amountspent, tbl_RecordsSpent.dateRecorded, tbl_RecordsSpent.usersexpensesID, tbl_expenses_users.expensesID   FROM            tbl_RecordsSpent INNER JOIN   tbl_expenses_users ON tbl_RecordsSpent.usersexpensesID = tbl_expenses_users.usersexpensesID  WHERE  tbl_RecordsSpent.dateRecorded BETWEEN '" + startdate +  "'AND'" + enddate + "'AND tbl_expenses_users.expensesID = '" + userIDxExpense + "'ORDER BY tbl_RecordsSpent.dateRecorded DESC";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ClassFields f = new ClassFields();
                            string v = string.Format("{0:N2}", dr["amountspent"].ToString());
                            f.amountspent = "P  " + v.ToString();
                            f.dateRecorded = dr["dateRecorded"].ToString();
                            list.Add(f);
                        }
                    }
                    else
                    {
                        ClassFields f = new ClassFields();
                        f.amountspent = "0";
                        f.dateRecorded = "no Record/s Yet";
                        list.Add(f);
                    }
                }
            }
        }
        return list;
    }
   

}