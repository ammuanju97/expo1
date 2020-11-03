using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Default : System.Web.UI.Page
{
    data d = new data();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
         //d.gridview("select sugges.*,userreg.* from sugges inner join userreg on sugges.userId=userreg.userId where status='pending' and sugges.companyid='"+Session["companyId"]+"'", GridView1);
         d.datalist("select details from sendnotify where type='user'", DataList1);
    }
}