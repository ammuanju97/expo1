using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    data da = new data();
    
    protected void Page_Load(object sender, EventArgs e)
    {


    
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
      
    }
    //protected void LinkButton2_Click(object sender, EventArgs e)
    //{
    //    MultiView1.ActiveViewIndex = 1;
    //    GridView2.DataBind();
    //}
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        da.gridview("select expodetails.*,exbitorreg.* from expodetails inner join exbitorreg on exbitorreg.exhibitorid=expodetails.exhibitorid where expodetails.status='approved'", GridView2);

        GridView2.DataBind();
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
        da.gridview("select login1.*,exbitorreg.* from exbitorreg inner join login1 on exbitorreg.logid=login1.logid where login1.status='approved'", GridView1);

        GridView1.DataBind();
    }
}