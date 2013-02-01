using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data.SqlClient;

public partial class Gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDataList();
        }
    }

    

    protected void BindDataList()
    {
        
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["dbaseconnection"].ConnectionString);
        SqlCommand command = new SqlCommand("SELECT ImageName,Product_Name,Product_UpdatedPrice from PRODUCT", conn);
        SqlDataAdapter da = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        da.Fill(dt);
        //DataList dlImages = Article1.ContentPlaceholder.Controls[0].FindControl("dlImages") as DataList;
        dlImages.DataSource = dt;
        dlImages.DataBind();
        conn.Close();
    }

}