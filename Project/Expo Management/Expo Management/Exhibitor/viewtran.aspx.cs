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
        dr = d.dataread("select exbitorreg.*,userreg.*,userticketbuk.* from exbitorreg inner join userreg on exbitorreg.logId=userreg.logId inner join userticketbuk on userreg.userId=userticketbuk.userId where userticketbuk.status='paid' and exbitorreg.ExhibitorId='" + Session["ExhibitorId"] + "'");
        if (dr.Read())
        {
            d.gridview("select exbitorreg.*,userreg.*,userticketbuk.* from exbitorreg inner join userreg on exbitorreg.logId=userreg.logId inner join userticketbuk on userreg.userId=userticketbuk.userId where userticketbuk.status='paid' and exbitorreg.ExhibitorId='" + Session["ExhibitorId"] + "'", GridView1);
        }

        else
        {
            Response.Write("<script>alert('No Transaction is done')</script>");

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}