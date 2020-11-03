using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication15
{
    public partial class register : System.Web.UI.Page
    {
        data d = new data();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            d.executes("insert into sample values('" + TextBox1.Text + "','" + TextBox2.Text + "'.'" + TextBox3.Text + "','" + TextBox4.Text + "')");
            Response.Write("<script>alert('suces')</script>");
        }
    }
}