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
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            gridfill();
        }

    }
    public void gridfill()
    {
        DataTable dt = d.datatable("select expoId, expotitle,expotype,startingdate,endingdate,state,place from expodetails where status='approved'");
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            MultiView1.SetActiveView(View2);

            int rowno = Convert.ToInt32(e.CommandArgument);
            string id = GridView1.DataKeys[rowno].Value.ToString();
            ViewState["Id"] = id;
            DataTable dt = d.datatable("select expoId,expotitle,expotype,image from expodetails where expoId='" + id + "'");
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "order")
        {
            Response.Redirect("~/user/productorder.aspx?id="+ViewState["Id"]+"");
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}