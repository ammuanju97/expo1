using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Exhibitor_Default : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void Button1_Click1(object sender, EventArgs e)
    {
        int m = da.execute("insert into sendnotify (sendersid,details,type,status) values('" + Session["logid"].ToString() + "','" + TextBox1.Text + "','user','pending')");
        if (m > 0)
        {
            Response.Write("<script>alert(' SUCCESSFULLY SET NOTIFICATIONS')</script/>");
            TextBox1.Text = "";
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}