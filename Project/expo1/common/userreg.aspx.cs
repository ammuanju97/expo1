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
    protected void Button1_Click(object sender, EventArgs e)
    {
        int m = da.execute("insert into login1 values('" + TextBox9.Text + "','" + TextBox10.Text + "','user','approved')");

        string p = da.excuteScalar("select max(logid) from login1");

        int k = da.execute("insert into userreg(logid,name,age,housename,country,state,district,place,mobileno,emailid)values('" + p + "' ,'" + txtName.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')");
        //cmd.ExecuteNonQuery();
        //cmd1.ExecuteNonQuery();
        if (k > 0)
        {

            Response.Write("<script>alert('REGISTRATION SUCCESSFULL')</script>");
        }
        txtName.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        DropDownList1.SelectedIndex = -1;
        DropDownList2.SelectedIndex = -1;
        DropDownList3.SelectedIndex = -1;
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";

        
    }
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }
}