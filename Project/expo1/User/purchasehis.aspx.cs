using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        da.gridview("select * from purchase   where userid='" + Session["userid"] + "' and status='purchase'", GridView2);
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}