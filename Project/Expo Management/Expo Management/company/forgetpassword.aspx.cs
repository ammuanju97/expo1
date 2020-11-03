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
    data d = new data();
    SqlDataReader dr, dr1;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dr = d.dataread("select * from userreg where emailid='" + TextBox1.Text + "'");
        if (dr.Read())
        {
            string mail = dr[10].ToString();
            string logid = dr[1].ToString();
            dr.Close();
            dr1 = d.dataread("select * from login1 where logid='" + logid + "'");
            if (dr1.Read())
            {
                d.mail(mail, "confirmation mail", "password is:'" + dr1[2].ToString() + "'");
                Response.Write("<script>alert('confirmation mail sucessfully send')</script>");
            }
            TextBox1.Text = "";
        }
    }
}