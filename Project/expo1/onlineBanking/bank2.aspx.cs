using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class onlineBanking_bank2 : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        //da.execute("delete from userorder where userId='" + Session["userId"] + "'");
        //Response.Write("<script>alert('PURCHASED SUCCESSFULLY')</script/>");
        //Response.Write("<script>alert('PAID')</script>");
        Response.Redirect("~/User/userhome.aspx");
    }
}