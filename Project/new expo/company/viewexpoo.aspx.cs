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
        d.gridview("select expoId,expotitle,expotype,category,subcategory,country,place,numberofbooth,image,startingdate from expodetails where status='approved'", GridView1);
        GridView1.DataBind();
    }
    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    int index = e.RowIndex;
    //    int id = Convert.ToInt32(GridView1.DataKeys[index].Value);
    //    d.execute("delete from expodetails where expoId='" + id + "'");
    //    Response.Write("<script>alert('Deleted successfully')</script>");
        

    //}
    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "delete")
    //    {

    //        int index = Convert.ToInt32(e.CommandArgument);

    //        int id = Convert.ToInt32(GridView1.DataKeys[index].Value);

    //        d.execute("delete from expodetails where expoId='" + id + "'");
    //        Response.Write("<script>alert('Deleted Successfully')</script>");
    //    }
    //}

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
        int id = Convert.ToInt32(GridView1.DataKeys[index].Value);
         d.execute("delete from expodetails where expoId='" + id + "'");
         d.gridview("select expoId,expotitle,expotype,category,subcategory,country,place,numberofbooth,image,startingdate from expodetails", GridView1);
       Label10.Text=  "Deleted successfully";
        
    }
}