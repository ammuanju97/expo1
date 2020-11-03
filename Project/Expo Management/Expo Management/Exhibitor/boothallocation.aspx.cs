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
            gridfill();
        }
        MultiView1.ActiveViewIndex = 0;
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
            MultiView1.ActiveViewIndex = 1;
           
            int index = GridView1.SelectedIndex;
            Response.Write(index);
            Session["aid"] = e.CommandArgument.ToString();
            //
            //d.dropdown("select * from comrequest")
            d.dropdown("select * from expodetails", ddlexpo, "expotitle", "expoid");
            dr = d.dataread("select * from  comrequest where requestid='" + e.CommandArgument.ToString() + "'");
            if (dr.Read())
            {
                string dq = dr["companyid"].ToString();
                d.execute("update invitecompany set status='accepted' where companyid='"+dq+"'");
                DataTable dt = d.datatable("select * from companyregist where companyid='" + dq + "'");
                //if (dr1.Read())
                //{
                    //string name = dt.Rows[0]["companyname"].ToString();
                    //string id = dt.Rows[0]["companyId"].ToString();

                    ddlcompny.DataSource = dt;
                    ddlcompny.DataValueField = "companyId";
                    ddlcompny.DataTextField = "companyname";
                    ddlcompny.DataBind();
                    ddlcompny.Items.Insert(0, "select");
                   
               // }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int m = d.execute("insert into exbootalloc (expoid,boothnumber,companyid,status) values('" + ddlexpo.SelectedItem.Value + "','" + booth.Text + "','" + ddlcompny.SelectedItem.Value + "','allocated')");
        if (m > 0)
        {
            Response.Write("<script>alert('ALLOCATED SUCCESSFULLY')</script/>");
            
        }
        ddlexpo.SelectedIndex = -1;
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
        DataTable dt = d.datatable("select * from comrequest join companyregist on comrequest.companyid=companyregist.companyId join expodetails on comrequest.expoid = expodetails.expoid");
        //   datatable dt = d.datatable("select * from comrequest join expodetails on comrequest.expoid = expodetails.expoid");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void booth_TextChanged(object sender, EventArgs e)
    {
        string count = d.excuteScalar("select count(*) from  exbootalloc where expoid= '" + ddlexpo.SelectedItem.Value + "' and boothnumber='" + booth.Text + "' ");
        if (count != "0")
        {
            Response.Write("<script>alert('Already assigned')</script>");
            booth.Text = "";
        }
        MultiView1.ActiveViewIndex = 1;

    }
}
