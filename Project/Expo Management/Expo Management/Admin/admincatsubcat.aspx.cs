using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    data d = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int j = d.execute("insert into admincat values('" + TextBox1.Text + "','" + TextBox2.Text + "')");
        if (j > 0)
        {
            Response.Write("<script>alert('REGISTRATION SUCCESSFULL')</script>");
        }
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
}