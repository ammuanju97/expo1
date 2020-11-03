using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    data d=new data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        d.execute("update login1 set password='"+TextBox2.Text+"'where logid='"+Session["logid"]+"'");
        Response.Write("<script>alert('updated')</script>");
        TextBox1.Text="";
        TextBox2.Text="";
        TextBox3.Text="";



    }
}