using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    data d = new data();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            d.gridview("select login1.*,exbitorreg.* from exbitorreg inner join login1 on exbitorreg.logid=login1.logid where login1.status='pending'", GridView1);
        }
        if(GridView1.Rows.Count<=0)
        {
            Label1.Text = "Nothing New To approve...";
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Approve")
        {
            d.execute("update login1 set status ='approved' where logid='" + e.CommandArgument.ToString() + "'");
            Response.Write("<script>alert('Approved')</script>");
            GridView1.DataBind();
            dr = d.dataread("select emailid from exbitorreg where logid='" + e.CommandArgument.ToString() + "'");
            if (dr.Read())
            {
                d.mail(dr[0].ToString(), "confirmation mail", "Approved Successfully you can login");
                Response.Write("<script>alert('confirmation mail successfully send')</script>");
                d.gridview("select login1.*,exbitorreg.* from exbitorreg inner join login1 on exbitorreg.logid=login1.logid where login1.status='pending'", GridView1);
            }

        }
        else
        {
            d.execute("delete from login1 where logid='" + e.CommandArgument.ToString() + "'");
            Response.Write("<script>alert('Rejected')</script>");
            GridView1.DataBind();
            dr = d.dataread("select emailid from exbitorreg where logid='" + e.CommandArgument.ToString() + "'");
            if (dr.Read())
            {
                d.mail(dr[0].ToString(), "confirmation mail", "Rejected");
                Response.Write("<script>alert('confirmation mail successfully send')</script>");
                d.gridview("select login1.*,exbitorreg.* from exbitorreg inner join login1 on exbitorreg.logid=login1.logid where login1.status='pending'", GridView1);
            }
        }
    }
}
