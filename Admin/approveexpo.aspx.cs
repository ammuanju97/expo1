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
            GridView1.Visible = true;
            d.gridview("select expodetails.*,exbitorreg.* from expodetails inner join exbitorreg on exbitorreg.exhibitorid=expodetails.exhibitorid where expodetails.status='pending' ", GridView1);
        }
        DataTable dt=d.datatable("select expodetails.*,exbitorreg.* from expodetails inner join exbitorreg on exbitorreg.exhibitorid=expodetails.exhibitorid where expodetails.status='pending'");
        if ( dt.Rows.Count<= 0)
        {
            Label1.Text = "Sorry...no Expos To Approve";
        }
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
                d.mail(dr["emailid"].ToString(), "confirmation mail", "The Expo you added Approved Successfully you can login");
                d.execute("update expodetails set status ='approved' where expoId='" + dr["expoid"] + "'");
                d.gridview("select expodetails.*,exbitorreg.* from expodetails inner join exbitorreg on exbitorreg.exhibitorid=expodetails.exhibitorid where expodetails.status='pending' ", GridView1);
                Response.Write("<script>alert('confirmation mail successfully send')</script>");
            }

        }
        else if (e.CommandName == "reject")
        {
            d.execute("delete from expodetails where expoid='" + e.CommandArgument.ToString() + "'");
            d.gridview("select expodetails.*,exbitorreg.* from expodetails inner join exbitorreg on exbitorreg.exhibitorid=expodetails.exhibitorid where expodetails.status='pending' ", GridView1);
            Label1.Text = "Rejected Successfully";
            //Response.Write("<script>alert('Rejected')</ccript>");
            //GridView1.DataBind();
            DataTable dt = d.datatable("select exhibitorId from expodetails where expoId='" + e.CommandArgument.ToString() + "'");
            if (dt.Rows.Count > 0)
            {
                dr = d.dataread("select emailid from exbitorreg where ExhibitorId='" + dt.Rows[0][0] + "' ");
                if (dr.Read())
                {

                    d.mail(dr[0].ToString(), "confirmation mail", "Rejected");

                    //Response.Write("<script>alert('confirmation mail successfully send')</script>");

                }
            }
            //else if (dt.Rows.Count <= 0)
            //{
            //    GridView1.Visible = false;
            //}
            
        }
   
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
