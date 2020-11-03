using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class Exhibitor_Default : System.Web.UI.Page
{
    data1 da1 = new data1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int m = da1.execute("insert into tbl_AccountDetails values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')");
        if (m > 0)
        {
            Response.Write("<script>alert('SUMBITTED SUCCESSFULLY')</script/>");

        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}