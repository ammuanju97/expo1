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
    data cs = new data();
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=expomanagement;Integrated Security=True");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from login1 where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'and status='approved'", con);
        dr = cmd.ExecuteReader();
       
        if (dr.Read())
        {
            Session["typ"] = dr["type"].ToString();
            if (dr["type"].ToString() == "user")
            {
                Session["logid"] = dr["logid"].ToString();
                Session["userid"] = cs.excuteScalar("select userid from userreg where logid='" + dr["logid"].ToString() + "'");
                Session["username"] = dr["username"].ToString();
                Response.Redirect("~/user/userhome.aspx");
            }
            else if (dr["type"].ToString() == "exhibitor")
            {
                Session["logid"] = dr["logid"].ToString();
                Session["userid"] = cs.excuteScalar("select ExhibitorId from exbitorreg where logid='" + dr["logid"].ToString() + "'");
                Session["username"] = dr["username"].ToString();
                Response.Redirect("~/Exhibitor/exhibitorhomes.aspx");
            }
           else if (dr["type"].ToString()== "company")
            {
                Session["companyId"] = cs.excuteScalar("select companyId from companyregist where logid='" + dr["logid"].ToString() + "'");
                Session["username"] = dr["username"].ToString();
                Response.Redirect("~/company/companyhome.aspx");

            }
            else if (dr["type"].ToString() == "admin")
            {
                Session["userid"] = 1;
                Session["logid"] = dr[0].ToString();
                Response.Redirect("~/Admin/adminhome.aspx");

            }
                
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Response.Redirect("signup.aspx");
  

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/common/forgetpassword.aspx");
    }
}