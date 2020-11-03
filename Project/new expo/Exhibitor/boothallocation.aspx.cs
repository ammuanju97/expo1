using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Exhibitor_Default : System.Web.UI.Page
{
    data d = new data();
    SqlDataReader dr, dr1;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            gridfill();
       dr= d.dataread("select comrequest.requestid from comrequest join companyregist on comrequest.companyid=companyregist.companyId join expodetails on comrequest.expoid = expodetails.expoid");
            if (!dr.Read())
            {
                Label4.Text = "Sorry!!! Nothing to Allocate";
            }
        }
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "allocate")
        {
         
            int rowno = Convert.ToInt32(e.CommandArgument);
            Session["aid"] = rowno;


            dr = d.dataread("select * from  comrequest where requestid='" + e.CommandArgument.ToString() + "'");
            if (dr.Read())
            {
                MultiView1.ActiveViewIndex = 1;
                string expoid = dr["expoid"].ToString();
                ViewState["eid"] = expoid;
                string comid = dr["companyid"].ToString();
                dr.Close();
                DataTable dt = d.datatable("select * from companyregist where companyid='" + comid + "'");
                DataTable dt1 = d.datatable("select * from expodetails where expoId='" + expoid + "'");
                TextBox1.Text = dt1.Rows[0]["expotitle"].ToString();
                ddlcompny.DataSource = dt;
                ddlcompny.DataValueField = "companyId";
                ddlcompny.DataTextField = "companyname";
                ddlcompny.DataBind();
                ddlcompny.Items.Insert(0, "select");
               

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int m = d.execute("insert into exbootalloc (expoid,boothnumber,companyid,status) values('" + ViewState["eid"] + "','" + booth.Text + "','" + ddlcompny.SelectedItem.Value + "','allocated')");
        if (m > 0)
        {
            Response.Write("<script>alert('ALLOCATED SUCCESSFULLY')</script/>");
            
        }
        TextBox1.Text = "";
        booth.Text = "";
        ddlcompny.SelectedIndex = -1;
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    public void gridfill()
    {
        DataTable dt = d.datatable("select * from comrequest join companyregist on comrequest.companyid=companyregist.companyId join expodetails on comrequest.expoid = expodetails.expoid where expodetails.exhibitorId='"+ Session["userid"] +"'");
        //   datatable dt = d.datatable("select * from comrequest join expodetails on comrequest.expoid = expodetails.expoid");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void booth_TextChanged(object sender, EventArgs e)
    {
        string count = d.excuteScalar("select count(*) from  exbootalloc where expoid= '" + ViewState["eid"] + "' and boothnumber='" + booth.Text + "' ");
        if (count != "0")
        {
            Response.Write("<script>alert('Already assigned')</script>");
            booth.Text = "";
        }
        MultiView1.ActiveViewIndex = 1;

    }
    protected void ddlcompny_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
