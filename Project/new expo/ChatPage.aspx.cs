using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Data.SqlClient;

public partial class ChatPage : System.Web.UI.Page
{
    data d = new data();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userid"] == null)
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                string msg = (string)Application["msg"];
                txtMessage.Text = msg;
                string time = (string)Application["time"];
                Label1.Text = time;

            }

        }
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        chatdiv.Style.Add("display", "none");
        //HttpRuntime.UnloadAppDomain();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["typ"].ToString() == "admin")
        {
            Response.Redirect("~/Admin/adminhome.aspx");
        }
        else if (Session["typ"].ToString() == "exhibitor")
        {
            Response.Redirect("~/Exhibitor/exhibitorhomes.aspx");
        }
        //else if(Session["typ"].ToString() == "user")
        //{
        //    Response.Redirect("~/User/userhome.aspx");
        //}
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        dr = d.dataread("select username from login1 where logid='" + Session["logid"] + "'");
        if (dr.Read())
        {
            Label1.Text = DateTime.Now.ToShortTimeString();
            string name = dr[0].ToString();
            string message = TextBox1.Text;
            string my = name + "::" + message;
            Application["msg"] = Application["msg"] + my+Environment.NewLine ;
            //txtMessage.Text = Application["msg"].ToString();
            TextBox1.Text = "";
            string msg= (string)Application["msg"];



            txtMessage.Text = msg;
           
        }
    }
}