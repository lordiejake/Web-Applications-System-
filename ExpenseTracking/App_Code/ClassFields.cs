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

/// <summary>
/// Summary description for ClassFields
/// </summary>
public class ClassFields
{
	public ClassFields()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public long usersexpensesID { set; get; }
    public long registereduserID { set; get; }
    public long expensesID { set; get; }
    public string expensesdescription { set; get; }

    public long recordsAmountID { set; get; }
    public string amountspent { set; get; }
    public string dateRecorded { set; get; }

    public string OverallAmount { set; get; }
   
}
