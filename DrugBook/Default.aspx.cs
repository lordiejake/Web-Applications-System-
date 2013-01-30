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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // PleaseWaitPanel.DataBind();
        //TextBoxWatermarkExtender1.DataBind();
        try
        {
            if (!IsPostBack)
            {
                PostAllIllness();
            }
        }
        catch (Exception)
        {

            Response.Redirect("Default.aspx?");
        }
        
        
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName.Equals("Select"))
        {
            Response.Redirect("HomeRemedies.aspx?IllnessCode=" + int.Parse(GridView2.DataKeys[index].Value.ToString()));   
        }
        
    }

    void PostAllIllness()
    {
        GridView2.DataSource = ClassDataManager.Illness_Load();
        GridView2.DataBind();
    }

    void PostAllIllnessSearching()
    {
        GridView2.DataSource = ClassDataManager.Illness_LoadSearching(TextBox3.Text);
        GridView2.DataBind();
    }

    protected void Save_Click(object sender, EventArgs e)
    { 
        System.Threading.Thread.Sleep(4000);
        PostAllIllnessSearching();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(4000);
    }
}
