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
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            d.gridview("select exbitorreg.*,userreg.*,userticketbuk.* from exbitorreg inner join userreg on exbitorreg.country=userreg.country inner join userticketbuk on userreg.userId=userticketbuk.userId where userticketbuk.status='booked' and exbitorreg.ExhibitorId='" + Session["userid"] + "'", GridView1);


            SqlDataReader dr = d.dataread("select exbitorreg.*,userreg.*,userticketbuk.* from exbitorreg inner join userreg on exbitorreg.country=userreg.country inner join userticketbuk on userreg.userId=userticketbuk.userId where userticketbuk.status='booked' and exbitorreg.ExhibitorId='" + Session["userid"] + "'");
            if (!dr.Read())
            {
                Label4.Text = "Nothing to display...There is no more Issued Ticket details To display";

            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}