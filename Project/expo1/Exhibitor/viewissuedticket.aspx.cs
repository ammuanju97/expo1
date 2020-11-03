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

        if (!IsPostBack)
        {
            d.gridview("select expodetails.*,exbaddticket.*,userticketbuk.*,userreg.* from expodetails inner join exbaddticket  on expodetails.expoId=exbaddticket.expoId inner join userticketbuk on exbaddticket.ticketId=userticketbuk.ticketId inner join userreg on userticketbuk.userId=userreg.userId  where userticketbuk.status='booked'", GridView1);
        }   
      SqlDataReader sr= d.dataread("select expodetails.*,exbaddticket.*,userticketbuk.*,userreg.* from expodetails inner join exbaddticket  on expodetails.expoId=exbaddticket.expoId inner join userticketbuk on exbaddticket.ticketId=userticketbuk.ticketId inner join userreg on userticketbuk.userId=userreg.userId  where userticketbuk.status='booked'");
      if (!sr.Read())
      {
          Label4.Text = "Nothing to display...There is no more Issued Ticket details To display";
      }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
        int id = Convert.ToInt32(GridView1.DataKeys[index].Value);
        Response.Write(id);
        d.execute("delete from userticketbuk where ticketbookid='" + id + "'");
        Response.Write("<script>alert('Deleted Succesfully')</script>");

    }
}