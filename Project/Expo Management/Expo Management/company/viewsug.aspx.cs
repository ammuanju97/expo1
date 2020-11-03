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
        d.gridview("select sugges.*,userreg.* from sugges inner join userreg on sugges.userId=userreg.userId where status='pending' and sugges.companyid='" + Session["companyId"] + "'", GridView1);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {


        if (e.CommandName == "reply")
        {
            MultiView1.ActiveViewIndex = 1;
            ViewState["id1"] = e.CommandArgument;
           
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        d.execute("update sugges set status='REPLIED',reply='" + TextBox1.Text + "' where sugId='" + ViewState["id1"] + "'");
        Response.Write("<script>alert('SEND SUCCESFULLY')</script>");
    }
    
        
    
    
    
   
}