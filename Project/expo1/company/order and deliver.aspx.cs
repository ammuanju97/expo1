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
    data da = new data();
    SqlDataReader dr;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            da.gridview("select userreg.*,purchase.* from userreg  inner join purchase on userreg.userId=purchase.userId where purchase.status='purchase'", GridView1);
        }
        dr=da.dataread("select userreg.*,purchase.* from userreg  inner join purchase on userreg.userId=purchase.userId where purchase.status='purchase'");
        if (!dr.Read())
        {
            Label10.Text = "Sorry...Nothing to Delever";

        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deliver")
        {
            da.execute("update purchase set status ='deliver' where orderdetailsid='" + e.CommandArgument.ToString() + "'");
            Response.Write("<script>alert('delivered')</script>");
           da.gridview("select userreg.*,purchase.* from userreg  inner join purchase on userreg.userId=purchase.userId where purchase.status='purchase'", GridView1);
    
    
            //dr = da.dataread("select emailid from exbitorreg where logid='" + e.CommandArgument.ToString() + "'");
            //if (dr.Read())
            //{
            //    d.mail(dr[0].ToString(), "confirmation mail", "Approved Successfully you can login");
            //    Response.Write("<script>alert('confirmation mail successfully send')</script>");
            //}

        }
    }
}