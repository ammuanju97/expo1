using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication15
{
    public partial class login : System.Web.UI.Page
    {
        data d = new data();
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dr = d.reader("select * from sample where username='" + TextBox1.Text + "' and email='" + TextBox2.Text + "'");
            if (dr.Read())
            {
                Response.Redirect("userform.aspx");
            }
        }
    }
}