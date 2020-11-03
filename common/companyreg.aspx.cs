using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class common_Default : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        int m = da.execute("insert into login1 values('" + TextBox24.Text + "','" + TextBox25.Text + "','company','pending')");
        string p = da.excuteScalar("select max(logid) from login1");

        int k = da.execute("insert into companyregist (logid,companyname,companytype,companyexperience,country,state,district,streetaddress,landmark,email)values('" + p + "','" + TextBox15.Text + "','" + TextBox17.Text + "','" + DropDownList5.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + TextBox22.Text + "','" + TextBox23.Text + "','"+ TextBox26.Text +"')");
        //cmd.ExecuteNonQuery();
        //cmd1.ExecuteNonQuery();
        if (k > 0)
        {

            Response.Write("<script>alert('REGISTRATION SUCCESSFULL')</script>");
        }

        TextBox15.Text = "";
        TextBox17.Text = "";
        DropDownList5.SelectedIndex = -1;
        DropDownList2.SelectedIndex = -1;
        DropDownList3.SelectedIndex = -1;
        DropDownList4.SelectedIndex = -1;
        TextBox22.Text = "";
        TextBox23.Text = "";
        TextBox24.Text = "";
        TextBox25.Text = "";
    }
}