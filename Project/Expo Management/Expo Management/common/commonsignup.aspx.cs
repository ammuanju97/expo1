using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class common_Default : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Exhibitor")
        {
            MultiView1.ActiveViewIndex = 1;

        }
        else if (DropDownList1.SelectedValue == "Company")
        {
            MultiView1.ActiveViewIndex = 2;
        }
        else if (DropDownList1.SelectedValue == "User")
        {
            Response.Redirect("~/common/usernewregs.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
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
      //  RadioButtonList1.SelectedValue = "";
        DropDownList6.SelectedIndex = -1;
        TextBox7.Text = "";
        DropDownList7.SelectedIndex = -1;
        DropDownList8.SelectedIndex = -1;
        DropDownList9.SelectedIndex = -1;
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";



    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        int m = da.execute("insert into login1 values('" + TextBox24.Text + "','" + TextBox25.Text + "','company','approved')");
        string p = da.excuteScalar("select max(logid) from login1");

        int k = da.execute("insert into companyregist (logid,companyname,companytype,companyexperience,country,state,district,streetaddress,landmark)values('" + p + "','" + TextBox15.Text + "','" + TextBox17.Text + "','" + DropDownList5.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + TextBox22.Text + "','" + TextBox23.Text + "')");
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
        TextBox24.Text= "";
        TextBox25.Text = "";
        




    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox17_TextChanged(object sender, EventArgs e)
    {

    }
}