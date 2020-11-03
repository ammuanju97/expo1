using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    data d = new data();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            d.gridview("select * from companyregist inner join login1 on login1.logid=companyregist.logid where status='pending' ", GridView1);
        }
      dr = d.dataread("select * from companyregist inner join login1 on login1.logid=companyregist.logid where status='pending'");
       if(!dr.Read())
        {
            Label1.Text = "Sorry...no Company To Approve";
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Approve")
        {
            //d.execute("update expodetails set status ='approved' where expoid='" + e.CommandArgument.ToString() + "'");
            Response.Write("<script>alert('Approved')</script>");
            GridView1.DataBind();
            //dr = d.dataread("select * from companyregist inner join login1 on login1.logid=companyregist.logid where status='pending'");
            //if (dr.Read())
            //{
            //    //Response.Write(dr["expoid"]);
            //    d.mail(dr["emailid"].ToString(), "confirmation mail", "The Expo you added Approved Successfully you can login");
                d.execute("update login1 set status ='approved' where logid='"+e.CommandArgument+"'");
                d.gridview("select * from companyregist inner join login1 on login1.logid=companyregist.logid where status='pending' ", GridView1);
                //Response.Write("<script>alert('successfully updated')</script>");
            }

        
        else
        {
            d.execute("delete from login1 where logid='" + e.CommandArgument.ToString() + "'");
            d.execute("delete from companyregist where logid='" + e.CommandArgument.ToString() + "'");
            Response.Write("<script>alert('Rejected')</ccript>");
            GridView1.DataBind();
            //dr = d.dataread("select emailid from exbitorreg where logid='" + e.CommandArgument.ToString() + "'");
            //if (dr.Read())
            //{
            //    Response.Write(dr["emailid"]);
                //d.mail(dr[0].ToString(), "confirmation mail", "Rejected");
                  d.gridview("select * from companyregist inner join login1 on login1.logid=companyregist.logid where status='pending' ", GridView1);
                Response.Write("<script>alert('Deleted Successfully')</script>");
                Label1.Text = "Deleted Successfully";
            }
        }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
