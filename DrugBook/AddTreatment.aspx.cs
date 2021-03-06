﻿using System;
using System.Collections;
using System.Collections.Generic;
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

public partial class AddTreatment : System.Web.UI.Page
{
    double Proceed = 0;
    double tret = 0;

    SqlConnection conn = null;
    double illnessc;
    double AdminID;

    protected void Page_Load(object sender, EventArgs e)
    {
        MedicineName.DataBind();
        if (!IsPostBack)
        {
            if (Request.QueryString["IllnessCode"] != null)
                illnessc = double.Parse(Request.QueryString["IllnessCode"]);
            Label6z.Text = illnessc.ToString();

            if (Session["Administration"] != null)
            {
                lblAdminID.Text = (string)(Session["Administration"]);
            }
            if (Session["Administration"] == null)
            {
                Response.Redirect("Default.aspx?");
            }
            PostSymptoms();
            SampleIllness();
            PostTreatment();
            PostMedicine();
        }
    }

    void PostMedicine()
    {
        GridView5.DataSource = ClassDataManager.LoadMedicines(illnessc);
        GridView5.DataBind();
    }

    protected void lnkMedicines_Click(object sender, EventArgs e)
    {

    }

    void SampleIllness()
    {
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        try
        {
            SqlCommand command = new SqlCommand("SELECT * FROM tbl_Illness WHERE IllnessID = '" + illnessc + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    LinkButton lnkMedicine = MedicineName.ContentPlaceholder.Controls[0].FindControl("lnkMedicines") as LinkButton;
                    lnkMedicine.Text = dr[1].ToString();

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
    void SearchSymptomps()
    {
        try
        {
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT * FROM tbl_Symptoms WHERE Symptoms = '" + TextBox1.Text + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Proceed = 0;

                    Label10z.Text = dr[0].ToString();
                    //Response.Redirect("Administrator.aspx?AdminID=" + double.Parse(AdminStatus.Text));
                    LinkButton4.Visible = true;
                    LinkButton4.Text = "[" + TextBox1.Text + "]" + " is/are already on database. Proceed Anyway.";
                }
            }
            else
            {
                Proceed = 1;
                Label10z.Text = "Proceed";
                LinkButton4.Visible = false;
                //AdminStatus.Text = "Check your Username/Password";
            }

        }
        catch (Exception)
        {
            //AdminStatus.Text = "failed to login";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SearchSymptomps();

        if (Proceed == 0)
        {

        }
        if (Proceed == 1)
        {
            try
            {
                ClassDataManager v = new ClassDataManager();
                v.Addsymptoms_NOW(TextBox1.Text, double.Parse(lblAdminID.Text));
                J();
                addproceed2();
                Response.Redirect("AddTreatMent.aspx?IllnessCode=" + int.Parse(Label6z.Text));
            }
            catch (Exception)
            {
                throw;
                //Response.Redirect("Default.aspx?");
            }
        }

    }

    void J()
    {
        try
        {
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT  TOP (1) SymptomsID  FROM  tbl_Symptoms ORDER BY SymptomsID DESC", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Label11z.Text = dr[0].ToString();
                }
            }

        }
        catch (Exception)
        {
            throw;
        }
    }


    void addproceed2()
    {
        try
        {
            ClassDataManager v = new ClassDataManager();
            v.Addsymptoms_Proceed2(double.Parse(Label6z.Text), double.Parse(Label11z.Text), double.Parse(lblAdminID.Text));
            LinkButton4.Visible = false;
        }
        catch (Exception)
        {

            throw;
        }
    }



    void PostSymptoms()
    {
        GridView3.DataSource = ClassDataManager.LoadSymptoms(illnessc);
        GridView3.DataBind();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        addproceed();
        Response.Redirect("AddTreatMent.aspx?IllnessCode=" + int.Parse(Label6z.Text));
    }

    void addproceed()
    {
        try
        {
            ClassDataManager v = new ClassDataManager();
            v.Addsymptoms_Proceed(double.Parse(Label6z.Text), double.Parse(Label10z.Text), double.Parse(lblAdminID.Text));
            LinkButton4.Visible = false;
        }
        catch (Exception)
        {

            throw;
        }
    }


    void home()
    {
        try
        {
            ClassDataManager v = new ClassDataManager();
            v.AddHomeRemedies(TextBox2.Text, double.Parse(Label6z.Text), double.Parse(lblAdminID.Text));
        }
        catch (Exception)
        {
            Response.Redirect("AddTreatMent.aspx?IllnessCode=" + int.Parse(Label6z.Text));
        }
    }


    void SearchHomeRemedies()
    {
        try
        {
            SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT * FROM tbl_Treatment WHERE TreatmentDescription = '" + TextBox2.Text + "'", conn);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    tret = 0;
                    LinkButton5.Visible = true;
                    LinkButton5.Text = "[" + TextBox2.Text + "]" + " is/are already on database. Proceed Anyway.";
                }
            }
            else
            {
                tret = 1;
                LinkButton5.Visible = false;
            }

        }
        catch (Exception)
        {
            //AdminStatus.Text = "failed to login";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (tret == 0)
            {
                SearchHomeRemedies();
            }
            if (tret == 1)
            {
                home();
                Response.Redirect("AddTreatMent.aspx?IllnessCode=" + int.Parse(Label6z.Text));
            }

        }
        catch (Exception)
        {
            Response.Redirect("AddTreatMent.aspx?IllnessCode=" + int.Parse(Label6z.Text));
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        try
        {
            home();
            Response.Redirect("AddTreatMent.aspx?IllnessCode=" + int.Parse(Label6z.Text));
        }
        catch (Exception)
        {
            Response.Redirect("AddTreatMent.aspx?IllnessCode=" + int.Parse(Label6z.Text));
        }
    }

    void PostTreatment()
    {
        GridView4.DataSource = ClassDataManager.LoadTreatments(illnessc);
        GridView4.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (double.Parse(Label6z.Text)>0)
            {
                Response.Redirect("DiseaseToDrugs.aspx?IllnessCode=" + int.Parse(Label6z.Text));
            }
        }
        catch (Exception)
        {
            
        }
    }
}