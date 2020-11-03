using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class common_Default : System.Web.UI.Page
{
    data da = new data();

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{

        //    da.dropdown("select distinct country from adminland", DropDownList3, "country", "country");
        //    da.dropdown("select distinct categoryname from admincat", DropDownList1, "categoryname", "categoryname");
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        




    }
}