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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            da.dropdown("select distinct exhibitorname,ExhibitorId from exbitorreg", ddlexhibitor, "exhibitorname", "Exhibitorid");
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        int m = da.execute("insert into comrequest (exhibitorid,expoid,companyid,description,status) values('" + ddlexhibitor.SelectedItem.Value + "','" + ddlexpo.SelectedItem.Value + "','" + Session["companyid"].ToString() + "','" + TextBox2.Text + "','pending')");
        if (m > 0)
        {
            Response.Write("<script>alert('Request send successfully')</script/>");

        }
        ddlexhibitor.SelectedIndex = -1;
        ddlexpo.SelectedIndex = -1;
        TextBox2.Text = "";
    }
    protected void ddlexhibitor_SelectedIndexChanged(object sender, EventArgs e)
    {
        da.dropdown("select distinct expotitle,expoId from expodetails where exhibitorId='" + ddlexhibitor.SelectedValue + "' ", ddlexpo, "expotitle", "expoid");
    }
}