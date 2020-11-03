using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Exhibitor_Default : System.Web.UI.Page
{
    data d = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        d.gridview("select expodetails.*,exbaddticket.*,userticketbuk.*,userreg.* from expodetails inner join exbaddticket  on expodetails.expoId=exbaddticket.expoId inner join userticketbuk on exbaddticket.ticketId=userticketbuk.ticketId inner join userreg on userticketbuk.userId=userreg.userId  where userticketbuk.status='booked';", GridView1);
        

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
        int id = Convert.ToInt32(GridView1.DataKeys[index].Value);
        Response.Write(id);
        d.execute("delete from userticketbuk where ticketbookid='" + id + "'");
        Response.Write("<script>alert('Deleted Succesfully')</script>");

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}