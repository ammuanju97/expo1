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
        //if (RadioButtonList1.SelectedIndex > 0 && DropDownList6.SelectedIndex > 0 && DropDownList7.SelectedIndex > 0 && DropDownList8.SelectedIndex > 0 && DropDownList9.SelectedIndex > 0)
        //{
            //if (FileUpload1.HasFile)
            //{

                string path = Server.MapPath("~/image/" + FileUpload1.FileName);
                da.fileupload(FileUpload1, path);
                int m = da.execute("insert into login1  values('" + TextBox13.Text + "','" + TextBox14.Text + "','exhibitor','pending')");
                string p = da.excuteScalar("select max(logid) from login1");

                int k = da.execute("insert into exbitorreg (logid,exhibitorname,age,gender,experience,address,country,state,district,mobilenumber,emailid,photo) values('" + p + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + RadioButtonList1.SelectedValue + "','" + DropDownList6.Text + "','" + TextBox7.Text + "','" + DropDownList7.SelectedValue + "','" + DropDownList8.SelectedValue + "','" + DropDownList9.SelectedValue + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + FileUpload1.FileName + "')");
                //cmd.ExecuteNonQuery();
                //cmd1.ExecuteNonQuery();
                if (k > 0)
                {
                    if (m > 0)
                    {

                        Response.Write("<script>alert('REGISTRATION SUCCESSFULL')</script>");
                    }
                }


                TextBox3.Text = "";
                TextBox4.Text = "";
                RadioButtonList1.SelectedValue = "";
                DropDownList6.SelectedIndex = -1;
                TextBox7.Text = "";
                DropDownList7.SelectedIndex = -1;
                DropDownList8.SelectedIndex = -1;
                DropDownList9.SelectedIndex = -1;
                TextBox11.Text = "";
                TextBox12.Text = "";
                TextBox13.Text = "";
                TextBox14.Text = "";
            //}
        //}
    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
}