using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            da.dropdown("select distinct companyname,companyid from companyregist", ddlcomp, "companyname", "companyid");


        }
        da.gridview("select sugges.*,companyregist.* from sugges inner join companyregist on companyregist.companyId=sugges.companyId where sugges.status='REPLIED'", GridView1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int m = da.execute("insert into  sugges  values('" + Session["userid"].ToString() + "','" + ddlcomp.SelectedItem.Value + "','" + description.Text + "','0','pending')");
        if (m > 0)
        {
            Response.Write("<script>alert('SEND SUCCESSFULLY')</script/>");

        }
        ddlcomp.SelectedIndex = -1;
        description.Text = "";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
        int id = Convert.ToInt32(GridView1.DataKeys[index].Value);
        Response.Write(id);
        da.execute("delete from sugges where companyid='" + id + "'");
        Response.Write("<script>alert('Deleted Succesfully')</script>");

    }
}