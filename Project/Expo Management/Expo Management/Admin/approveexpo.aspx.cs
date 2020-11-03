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
        dr = d.dataread("select expodetails.expoId from expodetails inner join exbitorreg on exbitorreg.exhibitorid=expodetails.exhibitorid where expodetails.status='pending' ");
        if (dr.Read())
        {
            d.gridview("select expodetails.*,exbitorreg.* from expodetails inner join exbitorreg on exbitorreg.exhibitorid=expodetails.exhibitorid where expodetails.status='pending' ", GridView1);

        }
        else
        {
            Response.Write("<script>alert('Nothing to approve')</script>");
        }






        d.gridview("select expodetails.*,exbitorreg.* from expodetails inner join exbitorreg on exbitorreg.exhibitorid=expodetails.exhibitorid where expodetails.status='pending' ", GridView1);

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
         if (e.CommandName == "Approve")
        {
            //d.execute("update expodetails set status ='approved' where expoid='" + e.CommandArgument.ToString() + "'");
            Response.Write("<script>alert('Approved')</script>");
            GridView1.DataBind();
            dr = d.dataread("select expodetails.*,exbitorreg.* from expodetails inner join exbitorreg on expodetails.exhibitorId=exbitorreg.exhibitorId where status='pending'");
            if (dr.Read())
            {
                Response.Write(dr["expoid"]);
                //d.mail(dr["emailid"].ToString(), "confirmation mail", "The Expo you added Approved Successfully you can login");
                d.execute("update expodetails set status ='approved' where expoId='" + dr["expoid"] + "'");
                d.gridview("select expodetails.*,exbitorreg.* from expodetails inner join exbitorreg on exbitorreg.exhibitorid=expodetails.exhibitorid where expodetails.status='pending' ", GridView1);
                Response.Write("<script>alert('confirmation mail successfully send')</script>");
            }

        }
        else
        {
            d.execute("delete from expodetails where expoid='"+e.CommandArgument.ToString()+"'");
            Response.Write("<script>alert('Rejected')</ccript>");
            GridView1.DataBind();
            dr = d.dataread("select emailid from exbitorreg where logid='" + e.CommandArgument.ToString() + "'");
            if (dr.Read())
            {
                Response.Write(dr["emailid"]);
                //d.mail(dr[0].ToString(), "confirmation mail", "Rejected");
                d.gridview("select expodetails.*,exbitorreg.* from expodetails inner join exbitorreg on exbitorreg.exhibitorid=expodetails.exhibitorid where expodetails.status='pending' ", GridView1);
                Response.Write("<script>alert('confirmation mail successfully send')</script>");

            }
        }
}
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
