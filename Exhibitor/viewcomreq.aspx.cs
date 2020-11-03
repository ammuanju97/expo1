using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Exhibitor_Default : System.Web.UI.Page
{
    data d = new data();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            d.gridview("select comrequest.*,companyregist.*,expodetails.* from expodetails inner join comrequest on expodetails.expoId=comrequest.expoid inner join companyregist on comrequest.companyid=companyregist.companyId where comrequest.status='pending' and expodetails.exhibitorId= '"+ Session["userid"] +"'", GridView1);
        }
        if (GridView1.Rows.Count <= 0)
        {
            Label1.Text = "Nothing New To approve...";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "approve")
        {
            d.execute("update comrequest set status ='approved' where requestid='" + e.CommandArgument.ToString() + "'");
            Response.Write("<script>alert('Approved')</script>");
            GridView1.DataBind();
            dr = d.dataread("select emailid from exbitorreg where logid='" + e.CommandArgument.ToString() + "'");
            if (dr.Read())
            {
                d.mail(dr[0].ToString(), "confirmation mail", "Approved Successfully you can login");
                Response.Write("<script>alert('confirmation mail successfully send')</script>");
                d.gridview("select comrequest.*,companyregist.*,expodetails.* from expodetails inner join comrequest on expodetails.expoId=comrequest.expoid inner join companyregist on comrequest.companyid=companyregist.companyId where comrequest.status='pending' and expodetails.exhibitorId= '" + Session["userid"] + "'", GridView1);
            }

        }
        else
        {
            d.execute("delete from comrequest where requestid='" + e.CommandArgument.ToString() + "'");
            Response.Write("<script>alert('Rejected')</script>");
            GridView1.DataBind();
            dr = d.dataread("select emailid from exbitorreg where logid='" + e.CommandArgument.ToString() + "'");
            if (dr.Read())
            {
                d.mail(dr[0].ToString(), "confirmation mail", "Rejected");
                Response.Write("<script>alert('confirmation mail successfully send')</script>");
                d.gridview("select comrequest.*,companyregist.*,expodetails.* from expodetails inner join comrequest on expodetails.expoId=comrequest.expoid inner join companyregist on comrequest.companyid=companyregist.companyId where comrequest.status='pending' and expodetails.exhibitorId= '" + Session["userid"] + "'", GridView1);
            }
        }
    }
}