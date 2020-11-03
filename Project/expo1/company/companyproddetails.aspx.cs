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
            //da.dropdown("select distinct companyname,companyid from companyregist", ddlcompanyname, "companyname", "companyId");
            da.dropdown("select distinct categoryname,categoryid from admincat", ddlcategory, "categoryname", "categoryid");
            SqlDataReader dr = da.dataread("SELECT * FROM comprodetails WHERE companyId = '" + Session["companyId"] + "'");
            if (!dr.Read())
            {
                Label10.Text = "No Data To Show";
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int m = da.execute("insert into comprodetails (companyId,categoryid,subcategory,productname,productquantity,description,price,status) values('" + Session["companyId"] + "','" + ddlcategory.SelectedValue + "','"+ddlsubcat.SelectedItem.Value+"','"+TextBox4.Text+"','" + TextBox1.Text + "','"+TextBox2.Text+"','"+TextBox3.Text+"','pending')");
        if (m > 0)
        {
            Response.Write("<script>alert('ADDED SUCCESSFULLY')</script/>");

        }
        ddlcategory.SelectedIndex = -1;
        ddlsubcat.SelectedIndex = -1;
        TextBox4.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {

        da.dropdown("select distinct subcategoryname,categoryname,categoryId from admincat where categoryid='" + ddlcategory.SelectedItem.Value + "'", ddlsubcat, "subcategoryname", "categoryId");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}