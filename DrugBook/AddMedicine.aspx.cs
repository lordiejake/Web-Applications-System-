using System;
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

public partial class AddMedicine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ArticleMedicine.DataBind();
        if (!IsPostBack)
        {
            Label lblAdminID = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("lblAdminID") as Label;
            PostMedicine();

            if (Session["Administration"] != null)
            {
                lblAdminID.Text = (string)(Session["Administration"]);
            }
            if (Session["Administration"] == null)
            {
                Response.Redirect("Default.aspx?");
            }
        }
    }
    protected void lnkuser_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());

        if (e.CommandName.Equals("Select"))
        {
            Response.Redirect("AddDrugsSpecifications.aspx?DrugCode=" + int.Parse(GridView5.DataKeys[index].Value.ToString()));
        }
    }

    void PostMedicine()
    {
        GridView5.DataSource = ClassDataManager.AllDrugz();
        GridView5.DataBind();
    }

    protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView5.PageIndex = e.NewPageIndex;
        GridView5.DataSource = ClassDataManager.AllDrugz();
        GridView5.DataBind();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        TextBox txtdrug = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("txtdrug") as TextBox;
        TextBox txtgeneric = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("txtgeneric") as TextBox;
        TextBox txtbrand = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("txtbrand") as TextBox;

        double txtdrugcount = double.Parse(txtdrug.Text.Length.ToString());
        double txtgenericcount = double.Parse(txtgeneric.Text.Length.ToString());
        double txtbrandcount = double.Parse(txtbrand.Text.Length.ToString());

        try
        {
            
            ClassDataManager v = new ClassDataManager();
            Label lblAdminID = ArticleMedicine.ContentPlaceholder.Controls[0].FindControl("lblAdminID") as Label;
            v.AddMedicine(txtdrug.Text, txtgeneric.Text, txtbrand.Text, double.Parse(lblAdminID.Text));
            Response.Redirect("AddMedicine.aspx?");

        }
        catch (Exception)
        {
            Response.Redirect("AddMedicine.aspx");
        }
    }
}