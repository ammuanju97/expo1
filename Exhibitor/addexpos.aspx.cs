using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Exhibitor_Default2 : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            da.dropdown("select distinct country from adminland", DropDownList3, "country", "country");
            da.dropdown("select distinct categoryname from admincat", DropDownList1, "categoryname", "categoryname");
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string count = da.excuteScalar("select count (*) from  expodetails where  startingdate='"+ TextBox4.Text +"'   and   endingdate='"+ TextBox5.Text +"'  ");

        if (count == "0")
        {

            string path = Server.MapPath("~/image/" + FileUpload1.FileName);
            string file = "~/image/" + FileUpload1.FileName;
            da.fileupload(FileUpload1, path);
            string path1 = Server.MapPath("~/image/" + FileUpload2.FileName);
            string file1 = "~/image/" + FileUpload2.FileName;
            da.fileupload(FileUpload2, path);
            int m = da.execute("insert into expodetails values('" + Session["userid"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + DropDownList6.Text + "','" + TextBox3.Text + "','" + FileUpload1.FileName + "','" + FileUpload2.FileName + "','" + TextBox4.Text + "','" + TextBox5.Text + "','pending')");
            if (m > 0)
            {
                Response.Write("<script>alert('ADDED SUCCESSFULLY')</script/>");

            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            DropDownList1.SelectedIndex = -1;
            DropDownList2.SelectedIndex = -1;
            DropDownList3.SelectedIndex = -1;
            DropDownList4.SelectedIndex = -1;
            DropDownList5.SelectedIndex = -1;
            DropDownList6.SelectedIndex = -1;
            TextBox3.Text = "";

            TextBox4.Text = "";
            TextBox5.Text = "";
        }

        else
        {
            Response.Write("<script>alert('Sorry!!!!! Already assinged another expo on that date......')</script>");
        }


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        da.dropdown("select distinct subcategoryname,categoryname from admincat where categoryname='" + DropDownList1.SelectedItem.Value + "'", DropDownList2, "subcategoryname", "subcategoryname");
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        da.dropdown("select distinct state,country from adminland where country='" + DropDownList3.SelectedItem.Value + "'", DropDownList4, "state", "state");
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        da.dropdown("select distinct district,state from adminland where state='" + DropDownList4.SelectedItem.Value + "'", DropDownList5, "district", "district");
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

        da.dropdown("select distinct place,district from adminland where district='" + DropDownList5.SelectedItem.Value + "'", DropDownList6, "place", "place");

    }
}
