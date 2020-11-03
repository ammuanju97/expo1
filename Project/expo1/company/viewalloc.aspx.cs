using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class company_Default : System.Web.UI.Page
{
    data d = new data();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        dr = d.dataread("select expodetails.*,exbitorreg.*,exbootalloc.* from exbootalloc inner join expodetails on exbootalloc.expoId=expodetails.expoId inner join exbitorreg on exbitorreg.exhibitorId=expodetails.exhibitorId where exbootalloc.companyId='" + Session["companyId"] + "' and exbootalloc.status='allocated'");
        if (dr.Read())
        {
            d.gridview("select expodetails.*,exbitorreg.*,exbootalloc.* from exbootalloc inner join expodetails on exbootalloc.expoId=expodetails.expoId inner join exbitorreg on exbitorreg.exhibitorId=expodetails.exhibitorId where exbootalloc.companyId='" + Session["companyId"] + "' and exbootalloc.status='allocated'", GridView1);
            GridView1.DataBind();
        }
        else
        {
            Label10.Text = "Sorry...Nothing to Allocate";
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "confirm")
        {
            
            int index = Convert.ToInt32(e.CommandArgument);
          
            int id =Convert.ToInt32(GridView1.DataKeys[index].Value);
         
            d.execute("update exbootalloc set status='confirm' where allocationid='" + id + "'");
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
        int id = Convert.ToInt32(GridView1.DataKeys[index].Value);
        d.execute("delete from exbootalloc where allocationid ='" + id + "'");
        Response.Write("<script>alert('Deleted successfully')</script>");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}