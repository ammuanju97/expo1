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
        if (!IsPostBack)
        {
            d.gridview("select userreg.*,purchase.*,temtab.* from userreg inner join purchase on userreg.userId=purchase.userId inner join temtab on purchase.userId=temtab.userId where temtab.companyId='" + Session["companyId"] + "' and purchase.status='purchase'", GridView1);
            GridView1.DataBind();
        }
        dr = d.dataread("select userreg.*,purchase.*,temtab.* from userreg inner join purchase on userreg.userId=purchase.userId inner join temtab on purchase.userId=temtab.userId where temtab.companyId='" + Session["companyId"] + "' and purchase.status='purchase'");
        if (!dr.Read())
        {
            Label10.Text = "Sorry...Nothing to Delever";
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
        int id = Convert.ToInt32(GridView1.DataKeys[index].Value);
        Response.Write(id);
        d.execute("delete from purchase where orderdetailsid='" + id + "'");
        d.gridview("select userreg.*,purchase.*,temtab.* from userreg inner join purchase on userreg.userId=purchase.userId inner join temtab on purchase.userId=temtab.userId where temtab.companyId='" + Session["companyId"] + "' and purchase.status='purchase'", GridView1);
        Response.Write("<script>alert('Deleted Succesfully')</script>");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}