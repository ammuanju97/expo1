using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class common_Default : System.Web.UI.Page
{
    SqlDataReader dr;
    SqlDataReader dr1;
        SqlDataReader dr2;
    SqlDataReader dr3;
    data d = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dr = d.dataread("select * from login1 where username='" + TextBox1.Text + "'");
        if (dr.Read())
        {
          
            string logid = dr[0].ToString();
            string pass = dr[2].ToString();
            dr.Close();
            dr1 = d.dataread("select * from userreg where logid='" + logid + "'");
            if (dr1.Read())
            {
                d.mail(dr1[10].ToString(), "confirmation mail", "password is:'" + pass + "'");
                Response.Write("<script>alert('confirmation mail sucessfully send')</script>");
                dr1.Close();
            }
                else{
                    dr2 = d.dataread("select * from exbitorreg where logid='" + logid + "'");
            if (dr2.Read())
            {
                d.mail(dr2[11].ToString(), "confirmation mail", "password is:'" + pass + "'");
                Response.Write("<script>alert('confirmation mail sucessfully send')</script>");
                dr2.Close();
            }
          
                }
            }
            
            TextBox1.Text = "";
        }
    }
